import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ws_homework_sentiments/core/models/weather.dart';

part 'weather_rest_client.g.dart';

@RestApi()
abstract class WeatherRestClient {
  factory WeatherRestClient(Dio dio) = _WeatherRestClient;

  @GET('/data/3.0/onecall')
  Future<Weather> getCurrentWeather(
    @Query('lat') double latitude,
    @Query('lon') double longitude,
    @Query('exclude') String excludeTypes,
    @Query('appid') String apiKey,
    @Query('units') String units,
  );
}
