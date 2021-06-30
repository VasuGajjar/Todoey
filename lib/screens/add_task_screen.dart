import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  void Function(Task) onButtonClick;

  AddTaskScreen({this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    String text = "";

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 24),
            ),
            TextField(
              onChanged: (value) {
                text = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            FlatButton(
              padding: EdgeInsets.all(10),
              onPressed: () {
                if (text.isNotEmpty) {
                  Task task = Task(text, false);
                  onButtonClick(task);
                }
              },
              color: Colors.lightBlueAccent,
              child: Text(
                "Add",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      ),
    );
  }
}
