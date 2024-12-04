import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tache Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Description: ${task['description']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}