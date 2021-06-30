import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> _tasks = List();

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void add(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void delete(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggle(int index) {
    _tasks[index].isChecked = !(_tasks[index].isChecked);
    notifyListeners();
  }

  int length() {
    return _tasks.length;
  }
}
