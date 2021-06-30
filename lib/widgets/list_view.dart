import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/widgets/list_tile.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: () {
                tasks.delete(tasks.tasks[index]);
              },
              child: List_Tile(
                name: tasks.tasks[index].name,
                isChecked: tasks.tasks[index].isChecked,
                onChange: (value) {
                  tasks.toggle(index);
                },
              ),
            );
          },
          itemCount: tasks.length(),
          padding: EdgeInsets.only(top: 16, bottom: 56),
        );
      },
    );
  }
}
