// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  bool isCheked = false;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() DeleteTask;

  TaskTile(
      {required this.isCheked,
      required this.taskTitle,
      required this.checkBoxChange,
      required this.DeleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: isCheked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isCheked,
        onChanged: checkBoxChange,
      ),
      onLongPress: DeleteTask,
    );
  }
}


/**import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskTile extends StatelessWidget {
  bool isCheked = false;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;

  TaskTile(
      {required this.isCheked,
      required this.taskTitle,
      required this.checkBoxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: isCheked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isCheked,
        onChanged: checkBoxChange,
        //onChanged: checkBoxChange,
      ),
    );
  }
} */
