import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/models/task_data.dart';

class AddTasks extends StatelessWidget {
  // final Function addTaskCallBack;
  // AddTasks(this.addTaskCallBack);
  String userValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        //height: 100,
        //width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
              ),
            ),
            TextField(
              onChanged: (newValue) {
                userValue = newValue;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () {
                // final task = Task(name: userValue);
                Provider.of<TaskData>(context).updateTask(userValue);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
