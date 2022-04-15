import 'package:flutter/material.dart';
import 'package:ass3/todo_app/data/tasks_data.dart';
import 'package:ass3/todo_app/widgets/task_widget.dart';

// ignore: must_be_immutable
class AllTasksScreen extends StatelessWidget {
  Function funCheck;
  Function funDelete;

  AllTasksScreen(this.funCheck, this.funDelete, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], funCheck, funDelete);
        });
  }
}
