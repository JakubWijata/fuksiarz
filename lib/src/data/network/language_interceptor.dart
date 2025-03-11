import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Request-Language'] = Intl.getCurrentLocale();

    handler.next(options);
  }
}
