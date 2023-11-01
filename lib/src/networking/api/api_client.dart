import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

part 'dio_logger.dart';
part 'request_type.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient({
    required String baseUrl,
    Iterable<Interceptor> interceptors = const [],
    DioLogger dioLogger = const DioLogger(),
  }) {
    _dio = (Dio(BaseOptions(baseUrl: baseUrl)));

    _dio.interceptors.addAll([
      ...interceptors,
      if (dioLogger.enablePrettyLogger)
        PrettyDioLogger(
          request: dioLogger.request,
          requestHeader: dioLogger.requestHeader,
          requestBody: dioLogger.requestBody,
          responseHeader: dioLogger.responseHeader,
          responseBody: dioLogger.responseBody,
          error: dioLogger.error,
          maxWidth: dioLogger.maxWidth,
          compact: dioLogger.compact,
        ),
    ]);
  }

  Future<Response> request({
    required String path,
    required RequestType requestType,
    Object? data,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    switch (requestType) {
      case RequestType.GET:
        return await _get(
          path,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          options: options,
        );
      case RequestType.POST:
        return await _post(
          path,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          options: options,
        );
      case RequestType.PUT:
        return await _put(
          path,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          options: options,
        );
      case RequestType.DELETE:
        return await _delete(
          path,
          data: data,
          queryParameters: queryParameters,
          cancelToken: cancelToken,
          options: options,
        );
    }
  }

  // =================================
  // HTTP METHODS
  // =================================
  Future<Response> _get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> _post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> _put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> _delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } catch (e) {
      rethrow;
    }
  }
}
