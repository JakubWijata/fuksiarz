import 'package:dio/dio.dart';
import 'package:fuksiarz/config/app_constants.dart';
import 'package:fuksiarz/src/data/dto_models/response_dto.dart';
import 'package:fuksiarz/src/data/network/language_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part "api_client.g.dart";

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio()..interceptors.add(LanguageInterceptor());

  @lazySingleton
  ApiClient get apiClient => ApiClient(dio, baseUrl: AppConstants.fuksiarzUrl);
}

@RestApi(baseUrl: AppConstants.fuksiarzUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/market/categories/multi/{ids}/events")
  Future<ResponseDTO> getEvents(
    @Path('ids') String ids,
  );

  @POST("/search/events/quick-search")
  Future<ResponseDTO> search(
    @Body() Map<String, dynamic> body,
  );
}
