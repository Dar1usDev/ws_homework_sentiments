import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ws_homework_sentiments/ui/common/custom_elevated_button.dart';
import 'package:ws_homework_sentiments/ui/common/custom_long_text_field.dart';
import 'package:ws_homework_sentiments/ui/common/custom_sliver_app_bar.dart';
import 'package:ws_homework_sentiments/ui/common/custom_text_field.dart';
import 'package:ws_homework_sentiments/ui/common/weather_widget.dart';
import 'package:ws_homework_sentiments/ui/routes//note_form/widgets/mood_picker.dart';
import 'package:ws_homework_sentiments/ui/routes/note_form/bloc/weather_bloc.dart';

class NoteForm extends StatefulWidget {
  final WeatherBloc bloc;

  const NoteForm({required this.bloc, super.key});

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  @override
  void initState() {
    super.initState();
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
                BlocBuilder<WeatherBloc, WeatherState>(
                  bloc: widget.bloc,
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: WeatherWidget(
                          context: context,
                          state: state,
                        ),
                      ),
                    );
                  },
                ),
                FittedBox(
                  child: CustomElevatedButton(
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
