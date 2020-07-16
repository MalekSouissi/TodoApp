import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function chechBoxCallBack;
  final Function lonPressCallBack;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.chechBoxCallBack,
      this.lonPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: lonPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.amber,
        onChanged: chechBoxCallBack,
      ),
    );
  }
}
