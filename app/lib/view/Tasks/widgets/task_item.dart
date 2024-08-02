import 'package:app/util/functions.dart';
import 'package:flutter/material.dart';

import '../../../model/task_model.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;
  final VoidCallback onPressed, onTap;

  const TaskItem({
    super.key,
    required this.task,
    required this.onTap,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color color = context.randomColor;
    return ListTile(
      leading: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: task.status == "completed" ? color : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: color, width: 2),
          ),
          child: Icon(
            Icons.check,
            size: 12,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.black
                : Colors.white,
          ),
        ),
      ),
      title: Text(
        task.title!,
        style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          task.favorite == "true" ? Icons.favorite : Icons.favorite_border,
          size: 20,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
