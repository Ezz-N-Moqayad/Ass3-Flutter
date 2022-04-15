import 'package:flutter/material.dart';
import 'todo_app/pages/todo_home_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const TodoHomePage()));
}

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {
  bool x;
  Function funCheck;
  Function funDelete;

  CustomCheckBox(this.x, this.funCheck, this.funDelete, {Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CustomCheckBoxState();
  }
}

class CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return CheckboxListTile(
      value: widget.x,
      onChanged: (v) {
        widget.funCheck();
        widget.funDelete();
        setState(() {});
      },
      title: const Text('Light Mode'),
    );
  }
}
