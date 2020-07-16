import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasksList = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy powder'),
  ];

  UnmodifiableListView<Task> get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get taskCounter {
    return _tasksList.length;
  }

  void addTask(String taskTitle) {
    final task = Task(name: taskTitle);
    _tasksList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasksList.remove(task);
    notifyListeners();
  }
}
