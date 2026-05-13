import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notes App'),
        ),
        body: const Center(
          child: Text('Welcome to the Notes App!'),
        ),
      ),
    );
  }
}