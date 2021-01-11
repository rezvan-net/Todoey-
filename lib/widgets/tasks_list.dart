import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build( context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return  ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];

            return TaskTile(
              taskTitle:task.name ?? '',
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallBack: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
