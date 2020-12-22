import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final Function submitted;
  final titleController = TextEditingController();
  Input(this.submitted);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
            textAlign: TextAlign.center,
            maxLines: 4,
            cursorColor: Colors.amber,
            cursorHeight: 30.0,
            controller: titleController,
            onSubmitted: (_) => submitted(titleController.text),
            decoration: InputDecoration(
              fillColor: Colors.white70,
              filled: true,
              border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
              hintText: 'Enter a todo sentence',
              suffixIcon: GestureDetector(
                  child: IconButton(
                      icon: Icon(Icons.done_rounded),
                      onPressed: () {
                        submitted(titleController.text);
                      })),
            )));
  }
}
