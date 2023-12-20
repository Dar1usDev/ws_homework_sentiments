import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/ui/common/custom_sliver_app_bar.dart';
import 'package:ws_homework_sentiments/ui/routes/notes/widgets/note_card.dart';

class NotesScrollView extends StatefulWidget {
  const NotesScrollView({super.key});

  @override
  State<NotesScrollView> createState() => _NotesScrollViewState();
}

class _NotesScrollViewState extends State<NotesScrollView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Все заметки'),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                child: NoteCard(),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
