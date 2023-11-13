import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/routes/not_implemented.dart';
import 'package:ws_homework_sentiments/routes/note_form.dart';
import 'package:ws_homework_sentiments/routes/notes.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NotImplementedPage(),
    NoteForm(),
    NotesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'not implemented',
          ),
          BottomNavigationBarItem(
              // TODO убрать label, сделать icon больше
              icon: Icon(Icons.add),
              label: 'Add'),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Dairy',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
