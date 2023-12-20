import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/ui/routes/notes/widgets/notes_scrollview.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesScrollView(),
    );
  }
}
