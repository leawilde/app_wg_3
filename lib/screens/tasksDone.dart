import 'package:flutter/material.dart';
import 'package:app_wg_3/task.dart';

class TasksDone extends StatelessWidget {
  const TasksDone({Key? key, required this.tasks}) : super(key: key);
  final List<Task> tasks;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                padding: EdgeInsets.all(10),
                child: Text(tasks[index].description,
                style: TextStyle(color: Colors.black),));
      }),
    );
  }
}
