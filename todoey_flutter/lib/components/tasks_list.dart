import 'package:flutter/material.dart';
import 'package:todoeyflutter/components/task_Tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasksList[index].name,
              isChecked: taskData.tasksList[index].isDone,
              chechBoxCallBack: (bool checkBoxstate) {
                taskData.updateTask(taskData.tasksList[index]);
              },
              lonPressCallBack: () {
                taskData.deleteTask(taskData.tasksList[index]);
              },
            );
          },
          itemCount: taskData.taskCounter,
        );
      },
    );
  }
}
