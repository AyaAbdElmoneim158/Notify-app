import 'package:flutter/material.dart';

class NoTasksYet extends StatelessWidget {
  const NoTasksYet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              "https://cdn-icons-png.flaticon.com/256/8777/8777961.png"),
          const Text("No Tasks yet !"),
        ],
      ),
    );
  }
}
