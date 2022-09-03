// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskF;

  AddTaskScreen({super.key, required this.addTaskF});
  @override
  Widget build(BuildContext context) {
    String? newTask;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'ADD New Task',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
                ),
              ),
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Enter Your Task",
            ),
            onChanged: (newText) {
              newTask = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addNewTask(newTask!);
              Navigator.pop(context);
              //addTaskF(newTask);
              //print(newTask);
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
            ),
          )
        ],
      ),
    );
  }
}
