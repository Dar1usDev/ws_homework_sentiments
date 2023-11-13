import 'package:flutter/material.dart';

class NotImplementedPage extends StatefulWidget {
  const NotImplementedPage({super.key});

  @override
  State<NotImplementedPage> createState() => _NotImplementedPageState();
}

class _NotImplementedPageState extends State<NotImplementedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Not implemented page'),
        ),
      ),
      body: const Center(
        child: Text('NOT IMPLEMENTED PAGE'),
      ),
    );
  }
}
