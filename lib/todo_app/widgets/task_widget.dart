import 'package:ass3/todo_app/models/task_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskWidget extends StatelessWidget {
  Function funCheck;
  Function funDelete;
  Task task;

  TaskWidget(this.task, this.funCheck, this.funDelete, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: Colors.red,
                icon: const Icon(Icons.delete),
                onPressed: () {
                  funDelete(task);
                },
              ),
              Text(task.title),
            ],
          ),
          Checkbox(
              value: task.isCompleted,
              onChanged: (v) {
                funCheck(task);
              })
        ],
      ),
    );
  }
}
