// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task.dart';
import '../models/task_data.dart';
import '../widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Future<void> _Refresh() async {
    return Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return RefreshIndicator(
          color: Colors.white,
          backgroundColor: Colors.teal[200],
          onRefresh: _Refresh,
          child: ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                  isCheked: taskData.tasks[index].isDone,
                  taskTitle: taskData.tasks[index].name,
                  checkBoxChange: (newvalue) {
                    taskData.upDate(
                      taskData.tasks[index],
                    );
                    /*setState(
                  () {
                    Provider.of<TaskData>(context).tasks[index].doneChange();
                  },
                );*/
                  },
                  DeleteTask: () {
                    taskData.deleteTask(taskData.tasks[index]);
                  });
            },
          ),
        );
      },
    );
  }
}
