import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String locale = Intl.getCurrentLocale();

    options.headers['Request-Language'] = locale;

    handler.next(options);
  }
}
