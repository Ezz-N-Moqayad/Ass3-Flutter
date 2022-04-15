import 'package:flutter/material.dart';
import 'package:ass3/todo_app/data/tasks_data.dart';
import 'package:ass3/todo_app/widgets/task_widget.dart';

// ignore: must_be_immutable
class InCompleteTasksScreen extends StatelessWidget {
  Function funCheck;
  Function funDelete;

  InCompleteTasksScreen(this.funCheck, this.funDelete, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList
                  .where((element) => !element.isCompleted)
                  .toList()[index],
              funCheck,
              funDelete);
        });
  }
}
