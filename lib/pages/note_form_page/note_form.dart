import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/pages/common_widgets/custom_long_text_field.dart';
import 'package:ws_homework_sentiments/pages/common_widgets/custom_sliver_app_bar.dart';
import 'package:ws_homework_sentiments/pages/common_widgets/custom_text_field.dart';
import 'package:ws_homework_sentiments/pages/note_form_page/widgets/custom_elevated_button.dart';
import 'package:ws_homework_sentiments/pages/note_form_page/widgets/mood_picker.dart';

enum ButtonState {
  unknown,
  known,
}

class NoteForm extends StatefulWidget {
  const NoteForm({super.key});

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  ButtonState _locationState = ButtonState.unknown;
  ButtonState _weatherState = ButtonState.unknown;

  void setLocationState() {
    _locationState = (_locationState == ButtonState.unknown)
        ? ButtonState.known
        : ButtonState.unknown;
    print('location');
    setState(() {});
  }

  void setWeatherState() {
    _weatherState = (_weatherState == ButtonState.unknown)
        ? ButtonState.known
        : ButtonState.unknown;
    print('weather');
    setState(() {});
  }

  Widget locationWidget() {
    return switch (_locationState) {
      ButtonState.unknown => CustomElevatedButton(
          function: () {
            setLocationState();
          },
          text: 'Геолокация',
          iconData: Icons.location_on,
        ),
      ButtonState.known => CustomElevatedButton(
          text: 'Хабаровск',
          iconData: Icons.location_on,
        ),
    };
  }

  Widget weatherWidget() {
    return switch (_weatherState) {
      ButtonState.unknown => CustomElevatedButton(
          function: () {
            setWeatherState();
          },
          text: 'Погода',
          iconData: Icons.cloud,
        ),
      ButtonState.known => CustomElevatedButton(
          text: 'Ветер....',
          iconData: Icons.cloud,
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Новая заметка'),
        SliverList.list(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                  child: Center(
                    child: CustomTextField(
                      hintText: 'Введите название',
                    ),
                  ),
                ),
                MoodPicker(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 300,
                    child: CustomLongTextField(
                      hintText: 'Введите текст',
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            child: locationWidget(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            child: weatherWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: CustomElevatedButton(
                    function: () {},
                    text: 'Сохранить',
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
