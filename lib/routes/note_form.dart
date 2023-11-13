import 'package:flutter/material.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({super.key});

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('New note form'),
        ),
      ),
      body: const Center(
        child: Text('NOTE FORM'),
      ),
    );
  }
}
