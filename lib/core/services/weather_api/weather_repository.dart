import 'package:dio/dio.dart';
import 'package:ws_homework_sentiments/core/models/weather.dart';
import 'package:ws_homework_sentiments/core/services/geolocation/locator.dart';
import 'package:ws_homework_sentiments/core/services/weather_api/weather_rest_client.dart';

class WeatherRepository {
  final Locator _locator;
  late final WeatherRestClient _client;
  final Dio _dio = Dio();

  static String _API_KEY = '6be4c1fd4c7c175cd559bb49f27d307f';

  WeatherRepository(this._locator) {
    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    _dio.options.baseUrl = 'https://api.openweathermap.org';
    _client = WeatherRestClient(_dio);
  }

  Future<Weather> getCurrentWeather() async {
    double latitude, longitude;
    (latitude, longitude) = await _locator.getCurrentLocation();

    const EXCLUDE_TYPES = 'minutely,hourly,daily,alert';
    const UNITS = 'metric';

    final response = await _client.getCurrentWeather(
      latitude,
      longitude,
      EXCLUDE_TYPES,
      _API_KEY,
      UNITS,
    );

    // Пример запроса
    // https://api.openweathermap.org/data/3.0/onecall?lat=48.50&lon=135.10
    // &exclude=minutely,hourly,daily,alerts
    // &appid=6be4c1fd4c7c175cd559bb49f27d307f&units=metric

    // TODO вариант реализации без RestApi
    // final response = await _dio.get(
    //   '/data/3.0/onecall',
    //   queryParameters: {
    //     'lat': latitude,
    //     'lon': longitude,
    //     'exclude': 'minutely,hourly,daily,alert',
    //     'appid': _API_KEY,
    //     'units': 'metric',
    //   },
    // );

    return response;
  }
}
