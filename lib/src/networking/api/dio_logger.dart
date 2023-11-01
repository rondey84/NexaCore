part of 'api_client.dart';

class DioLogger {
  final bool enablePrettyLogger;
  final bool request;
  final bool requestHeader;
  final bool requestBody;
  final bool responseHeader;
  final bool responseBody;
  final bool error;
  final int maxWidth;
  final bool compact;

  const DioLogger({
    this.enablePrettyLogger = true,
    this.request = true,
    this.requestHeader = false,
    this.requestBody = false,
    this.responseHeader = false,
    this.responseBody = true,
    this.error = true,
    this.maxWidth = 90,
    this.compact = true,
  });
}
