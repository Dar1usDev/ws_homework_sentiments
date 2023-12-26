part of 'weather_bloc.dart';

sealed class WeatherState {
  const WeatherState();
}

final class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

final class WeatherLoading extends WeatherState {
  const WeatherLoading();
}

final class WeatherDeclined extends WeatherState {
  const WeatherDeclined();
}

final class WeatherReceived extends WeatherState {
  const WeatherReceived();
}
