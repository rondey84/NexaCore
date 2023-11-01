import 'dart:async';
import 'package:flutter/widgets.dart';

/// `Polling` is a utility class designed to repeatedly execute a given polling function
/// at a specified interval until a certain stop condition is met or until a set timeout
/// is reached.
///
/// ### Example:
/// ```dart
/// // Create a polling instance
/// final polling = Polling<String>(
///   pollingFunction: apiService.fetchData,
///   stopCondition: (result) {
///     // Stop polling if the current second is even
///     return int.parse(result.substring(17, 19)) % 2 == 0;
///   },
///   showDebugPrints: true,
/// );
///
/// // Start the polling
/// try {
///   final data = await polling.start();
///   // Do what you want with the data..
/// } catch (e) {
///   if (e is TimeoutException) {
///     print('Request has timed out')
///     return;
///   }
///   polling.stop();
/// }
///
/// ```
///
/// ### Parameters:
/// - [interval]: The duration between successive polls. Defaults to 500 milliseconds.
/// - [timeout]: The maximum duration allowed for the polling to continue. Defaults to 30 seconds.
/// - [pollingFunction]: The asynchronous function to be polled. It returns a `Future` of type `T`.
/// - [stopCondition]: A condition function that takes an argument of type `T` (the result of [pollingFunction])
///   and returns a `bool` indicating whether to stop the polling.
/// - [showDebugPrints]: A flag to enable or disable debug prints. Defaults to `false`.
class Polling<T> extends WidgetsBindingObserver {
  Polling({
    this.interval = const Duration(milliseconds: 500),
    this.timeout = const Duration(milliseconds: 30000),
    required this.pollingFunction,
    required this.stopCondition,
    this.showDebugPrints = false,
  });

  /// Defaults to `500milliseconds`
  final Duration interval;

  /// Defaults to `30000milliseconds`
  final Duration timeout;
  final Future<T> Function() pollingFunction;
  final bool Function(T) stopCondition;

  final bool showDebugPrints;

  final _completerResponse = Completer<T>();

  Timer? _timer;
  Timer? _timeoutTimer;

  Future<T> start() async {
    _startPolling();

    _timeoutTimer = Timer(timeout, () {
      stop();
      _completerResponse.completeError(TimeoutException(
        'Timeout exceeded',
        timeout,
      ));
    });

    WidgetsBinding.instance.addObserver(this);

    return _completerResponse.future;
  }

  void stop() {
    if (showDebugPrints) debugPrint('Polling Stopped');
    _timer?.cancel();
    _timer = null;
    _timeoutTimer?.cancel();
    _timeoutTimer = null;
    WidgetsBinding.instance.removeObserver(this);
  }

  void _startPolling() {
    if (showDebugPrints) debugPrint('Polling Start');
    _timer = Timer.periodic(interval, (timer) async {
      T result = await pollingFunction();

      if (stopCondition(result)) {
        stop();
        _completerResponse.complete(result);
      }
    });
  }

  void _pausePolling() {
    if (showDebugPrints) debugPrint('Polling Paused');
    _timer?.cancel();
    _timer = null;
    // MAYBE Pause the timeout here and resume when the app is foregrounded;
    // This will make sure fetching is not closed with a timeout error.
    // Requires external package.
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (showDebugPrints) debugPrint('AppState Changed: $state');

    switch (state) {
      case AppLifecycleState.resumed:
        // App is resumed (foregrounded)
        _startPolling();
        break;
      case AppLifecycleState.hidden:
      case AppLifecycleState.inactive:
      // App is inactive (background)
      case AppLifecycleState.paused:
        // App is paused (background)
        _pausePolling();
        break;
      case AppLifecycleState.detached:
        // App is detached (terminated)
        stop();
        break;
    }

    super.didChangeAppLifecycleState(state);
  }
}
