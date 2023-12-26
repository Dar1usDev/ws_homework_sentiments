import 'package:ws_homework_sentiments/core/di/service_locator.dart';
import 'package:ws_homework_sentiments/core/services/geolocation/locator.dart';
import 'package:ws_homework_sentiments/core/services/weather_api/weather_repository.dart';
import 'package:ws_homework_sentiments/main.dart';
import 'package:ws_homework_sentiments/route_page.dart';
import 'package:ws_homework_sentiments/ui/routes/note_form/bloc/weather_bloc.dart';
import 'package:ws_homework_sentiments/ui/routes/note_form/note_form.dart';
import 'package:ws_homework_sentiments/ui/routes/notes/notes_page.dart';
import 'package:ws_homework_sentiments/ui/routes/statistics/statistics_page.dart';

class DIContainer {
  const DIContainer();

  ///// Statistics /////

  StatisticsPage get _statisticsPage => StatisticsPage();

  ///// Note form /////

  Locator get _locator => Locator.instance;

  WeatherRepository get _weatherRepository => WeatherRepository(_locator);

  WeatherBloc _getWeatherBloc() {
    final _weatherBloc = WeatherBloc(_weatherRepository);
    ServiceLocator.instance.register(_weatherBloc);
    return _weatherBloc;
  }

  NoteForm get _noteForm => NoteForm(bloc: _getWeatherBloc());

  ///// Notes page /////

  NotesPage get _notesPage => NotesPage();

  ///// App /////

  RoutePage get _routePage => RoutePage(
        statisticsPage: _statisticsPage,
        noteForm: _noteForm,
        notesPage: _notesPage,
      );

  MyApp get appInstance => MyApp(routePage: _routePage);
}
