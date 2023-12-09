import 'package:flutter_bloc/flutter_bloc.dart';

class Task {
  final String title;
  final bool isCompleted;

  Task(this.title, this.isCompleted);
}

class TaskBloc extends Cubit<List<Task>> {
  TaskBloc() : super([]);

  void updateTasks(List<Task> tasks) => emit(tasks);
}
