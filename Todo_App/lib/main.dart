import 'package:flutter/material.dart';

import './input.dart';
import './list.dart';
import './models/Task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Task> _arrayList = [];

  void _submitted(String txt) {
    if (txt.length <= 0) {
      return;
    }
    setState(() {
      final newTk = Task(id: _arrayList.length, text: txt);
      _arrayList.add(newTk);
    });
  }

  void _removeElement(int ide) {
    setState(() {
      _arrayList.removeAt(ide);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Todo App')),
            body: SingleChildScrollView(
                child: Container(
                    color: Colors.purpleAccent,
                    child: Column(children: [
                      Input(_submitted),
                      TaskList(_arrayList, _removeElement)
                    ])))));
  }
}
