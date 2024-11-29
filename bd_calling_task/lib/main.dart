import 'package:flutter/material.dart';
import 'task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TaskPage(),
    );
  }
}
