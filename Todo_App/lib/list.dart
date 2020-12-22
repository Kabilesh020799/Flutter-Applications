import 'package:flutter/material.dart';
import './models/Task.dart';

class TaskList extends StatelessWidget {
  final List<Task> taskList;
  final Function removeElement;
  TaskList(this.taskList, this.removeElement);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        height: 500,
        child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (ctx, index) {
            return Container(
                child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    taskList[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.delete_rounded,
                        color: Colors.white70,
                      ),
                      onPressed: () => removeElement(index))
                ],
              ),
              color: Colors.transparent,
              elevation: 0,
            ));
          },
        ));
  }
}
