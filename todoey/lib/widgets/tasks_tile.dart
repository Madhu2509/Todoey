import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longpressCallBack;
  @override

  // void changeState(bool checkValue) {
  //   setState(() {
  //     isChecked = checkValue;
  //   });
  // }

  TasksTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallBack,
      this.longpressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallBack),
    );
  }
}
