import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/route_page.dart';
import 'package:ws_homework_sentiments/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sentiments',
      theme: ThemeManager.setDarkTheme(context),
      debugShowCheckedModeBanner: false,
      home: const RoutePage(),
    );
  }
}
