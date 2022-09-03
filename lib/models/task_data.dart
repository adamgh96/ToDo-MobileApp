import 'package:flutter/material.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "do ....."),
  ];

  void addNewTask(String newTaskTitle) {
    tasks.add(
      Task(name: newTaskTitle),
    );
    notifyListeners();
  }

  void upDate(Task upTask) {
    upTask.isDone = !upTask.isDone;
    notifyListeners();
  }

  void deleteTask(Task deTask) {
    tasks.remove(deTask);
    notifyListeners();
  }
}
