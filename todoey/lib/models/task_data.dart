import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Assignments'),
    Task(name: 'Course Completion'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(String newTask) {
    final newTsk = Task(name: newTask);
    _tasks.add(newTsk);
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void updateToggle(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
