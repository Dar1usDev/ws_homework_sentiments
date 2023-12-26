import 'package:bloc/bloc.dart';
import 'package:ws_homework_sentiments/core/models/weather.dart';
import 'package:ws_homework_sentiments/core/services/weather_api/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(WeatherInitial()) {
    on<WeatherRequested>(_onRequested);
  }

  Future<void> _onRequested(
    WeatherRequested event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());

    final Weather? weather = await _weatherRepository.getCurrentWeather();

    if (weather == null) {
      emit(WeatherDeclined());
    } else {
      emit(WeatherReceived());
    }
  }
}
