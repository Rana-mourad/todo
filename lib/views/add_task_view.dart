import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/models/app_bloc.dart';
import 'package:todo_app/views/bottom_sheets/add_task.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, List<Task>>(
      builder: (context, tasks) {
        return SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 239, 241, 243),
              foregroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              HapticFeedback.heavyImpact();
              showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskBottomSheetView(),
              );
            },
            child: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
