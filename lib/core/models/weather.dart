import 'package:logger/logger.dart';

class Weather {
  final String timezoneName;
  final double temp;
  final double feelsLike;
  final double pressure;
  final double humidity;

  static const pressureConvertConst = 0.75006375541921;

  const Weather(
    this.timezoneName,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
  );

  factory Weather.fromJson(Map<String, dynamic> json) {
    Logger().i(json);
    final Map<String, dynamic> current = json['current'];

    return Weather(
      json['timezone'],
      double.parse(current['temp'].toString()),
      double.parse(current['feels_like'].toString()),
      _fromHPaToMmHg(double.parse(current['pressure'].toString())),
      double.parse(current['humidity'].toString()),
    );
  }

  static double _fromHPaToMmHg(double inHpa) => inHpa * pressureConvertConst;

  // TODO Implement toJson
  //Map<String, dynamic> toJson() => _$WeatherToJson(this);

  // TODO Implement toString
  // String toString() => toJson().toString();
}
