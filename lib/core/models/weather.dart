import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final String timezoneName;
  final double temp;
  final double feelsLike;
  final double pressure;
  final double humidity;

  Weather(
    this.timezoneName,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
  );

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  String toString() => toJson().toString();
}
