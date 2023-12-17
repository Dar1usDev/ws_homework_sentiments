import 'package:dio/dio.dart';

class NetworkRepository {
  final Dio _dio = Dio();

  static String _API_KEY = '6be4c1fd4c7c175cd559bb49f27d307f';

  NetworkRepository() {
    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    _dio.options.baseUrl = 'https://api.openweathermap.org';
  }

  Future getCurrentWeather({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _dio.get(
      '/data/3.0/onecall',
      queryParameters: {
        'lat': latitude,
        'lon': longitude,
        'exclude': 'minutely,hourly,daily,alert',
        'appid': _API_KEY,
        'units': 'metric',
      },
    );

    return Future(() => null);
  }
}

//https://api.openweathermap.org/data/3.0/onecall?lat=48.50&lon=135.10&exclude=minutely,hourly,daily,alerts&appid=6be4c1fd4c7c175cd559bb49f27d307f&units=metric
