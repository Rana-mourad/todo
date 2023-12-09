import 'package:flutter/material.dart';
import 'package:todo_app/views/add_task_view.dart';
import 'package:todo_app/views/header_view.dart';
import 'package:todo_app/views/task_info_view.dart';
import 'package:todo_app/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Header View
            Expanded(flex: 1, child: HeaderView()),

            // Task Info View
            Expanded(flex: 1, child: TaskInfoView()),

            // Task List View
            Expanded(flex: 7, child: TaskListView()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the AddTaskView when the FAB is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskView()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
