import 'package:app/styles/dimensions.dart';
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
            "https://cdn-icons-png.flaticon.com/256/8777/8777961.png",
            height: context.screenHeight * 0.2,
          ),
          const Text("No Tasks yet !"),
        ],
      ),
    );
  }
}
