import 'package:flutter/material.dart';

class List_Tile extends StatelessWidget {
  String name;
  bool isChecked;
  void Function(bool) onChange;

  List_Tile({this.name, this.isChecked, this.onChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChange,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
