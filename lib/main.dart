import 'package:flutter/material.dart';
import 'pages/tasklist.dart';
import 'pages/taskform.dart';
import 'pages/taskdetails.dart';

void main() {
  runApp(TaskManagementApp());
}

class TaskManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      initialRoute: '/',
      routes: {
        '/': (context) => TaskListPage(),
        '/taskForm': (context) => TaskFormPage(),
        '/taskDetails': (context) => TaskDetailsPage(),
      },
    );
  }
}