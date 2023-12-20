import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ws_homework_sentiments/core/models/weather.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/data/3.0/onecall')
  Future<Weather> getCurrentWeather(
    @Query('lat') double latitude,
    @Query('lon') double longitude,
    @Query('exclude') String excludeTypes,
    @Query('appid') String apiKey,
    @Query('units') String units,
  );
}
