import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  @JsonKey(name: 'timezone')
  final String timezoneName;
  @JsonKey(name: 'current')
  final Map<String, dynamic> current;

  // TODO Переделать в кастомный fromJson без либы
  // @JsonKey(name: 'temp')
  // final double temp;
  // @JsonKey(name: 'feels_like')
  // final double feelsLike;
  // @JsonKey(name: 'pressure')
  // final double pressure;
  // @JsonKey(name: 'humidity')
  // final double humidity;

  Weather(
    this.timezoneName,
    this.current,
    //   this.temp,
    //   this.feelsLike,
    //   this.pressure,
    //   this.humidity,
  );

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @override
  String toString() => toJson().toString();
}
