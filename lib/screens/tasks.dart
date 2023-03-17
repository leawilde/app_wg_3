import 'package:flutter/material.dart';
import 'package:app_wg_3/task.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {

  int _points = 69;
  List<Task> tasks = [
    Task(description: 'Bad putzen', points: 20),
    Task(description: 'Küche putzen', points: 20),
    Task(description: 'Flur putzen', points: 10),
    Task(description: 'Müll rausbringen', points: 5),
    Task(description: 'Boden wischen', points: 10),
    Task(description: 'WG Einkauf', points: 5),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Text('Tasks', style: TextStyle(color: Colors.white),)
          ),
          ElevatedButton(onPressed: () { updatePoints(10);}, child: Text('Tasks Done')),
          Container(
            margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: <Widget>[
                Text('Congrats you have got', style: TextStyle(color: Colors.white,),),
                Text('$_points Points', style: TextStyle(color: Colors.white),)
              ],
            ),
          )
        ],
      ),
    );
  }

  void updatePoints(int points) {
    setState(() {
      _points += points;
    });
  }

}
