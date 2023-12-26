import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ws_homework_sentiments/core/di/service_locator.dart';
import 'package:ws_homework_sentiments/core/models/weather.dart';
import 'package:ws_homework_sentiments/ui/common/custom_elevated_button.dart';
import 'package:ws_homework_sentiments/ui/routes/note_form/bloc/weather_bloc.dart';

class WeatherWidget extends StatefulWidget {
  final WeatherState state;
  final BuildContext context;
  final Weather? data;

  const WeatherWidget({
    required this.state,
    required this.context,
    this.data,
    super.key,
  });

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  Logger logger = Logger(); // TODO Logger

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.state) {
      WeatherInitial() => CustomElevatedButton(
          function: () {
            ServiceLocator.instance.read<WeatherBloc>()
              ..add(const WeatherRequested());
          },
          text: 'Привязать погоду',
          iconData: Icons.cloud,
        ),
      WeatherLoading() => CustomElevatedButton(
          text: 'Загрузка...',
          iconData: Icons.downloading,
        ),
      WeatherDeclined() => CustomElevatedButton(
          text: 'Погода недоступна',
          iconData: Icons.cloud_off,
        ),
      WeatherReceived() => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(
              color: Theme.of(context).primaryColorLight,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Text('Давление: 100'),
              Divider(),
              Text('Температура: 200'),
              Divider(),
              Text('Влажность: 300'),
            ],
          ),
        )
    };
  }
}
