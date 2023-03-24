import 'package:flutter/material.dart';
import 'package:app_wg_3/task.dart';

class TasksDone extends StatelessWidget {
  const TasksDone({Key? key, required this.tasksDone}) : super(key: key);
  final List<String> tasksDone;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tasks Done'),
      ),
      body: ListView.builder(
          itemCount: tasksDone.length,
          itemBuilder: (context, index){
            return Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: EdgeInsets.all(10),
                  child: Text(tasksDone[index],
                  style: const TextStyle(color: Colors.black, fontSize: 26),)),
            );
      }),
    );
  }
}
