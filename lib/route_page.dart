import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/ui/routes/note_form/note_form.dart';
import 'package:ws_homework_sentiments/ui/routes/notes/notes_page.dart';
import 'package:ws_homework_sentiments/ui/routes/statistics/statistics_page.dart';

class RoutePage extends StatefulWidget {
  final StatisticsPage statisticsPage;

  final NoteForm noteForm;

  final NotesPage notesPage;

  const RoutePage({
    required this.statisticsPage,
    required this.noteForm,
    required this.notesPage,
    super.key,
  });

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int _selectedIndex = 2;

  late List<Widget> _widgetOptions = <Widget>[
    widget.statisticsPage,
    widget.noteForm,
    widget.notesPage,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Статистика',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Добавить',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Дневник',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
