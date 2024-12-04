import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {'manger': 'Task 1', 'description': 'c\'est la vie'},
    {'boire': 'Task 2', 'description': 'que c\'est doux'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tache List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]['title']!),
            subtitle: Text(tasks[index]['description']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/taskDetails',
                arguments: tasks[index],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/taskForm');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}