import 'package:flutter/material.dart';
import 'package:ws_homework_sentiments/core/di/di_container.dart';
import 'package:ws_homework_sentiments/route_page.dart';
import 'package:ws_homework_sentiments/ui/theme/theme_manager.dart';

void main() {
  runApp(DIContainer().appInstance);
}

class MyApp extends StatelessWidget {
  final RoutePage routePage;

  const MyApp({required this.routePage, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sentiments',
      theme: ThemeManager.setDarkTheme(context),
      debugShowCheckedModeBanner: false,
      home: routePage,
    );
  }
}
