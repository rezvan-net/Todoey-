import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';
import 'task.dart';


class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy soap'),
  ];

  UnmodifiableListView <Task> get tasks {
    return UnmodifiableListView(_tasks);
  }


  int get taskCount{
    return _tasks.length;
  }

  void addTask (String  newTextTitle){
    // tasks.add(Task(name:'xgbnmmhg'));
final task= Task (name: newTextTitle);
_tasks.add(task);
notifyListeners();
  }


void updateTask (Task task){
task.toggleDone();
notifyListeners();
  }


void deleteTask (Task task){
    _tasks.remove(task);
notifyListeners();
}


}
