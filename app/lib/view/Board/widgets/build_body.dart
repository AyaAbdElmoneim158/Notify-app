import 'package:flutter/material.dart';

import '../../Tasks/screens/all_screen.dart';
import '../../Tasks/screens/complete_screen.dart';
import '../../Tasks/screens/favorite_screen.dart';
import '../../Tasks/screens/uncompleted_screen.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        AllTasks(),
        UnCompletedTasks(),
        CompletedTasks(),
        FavoriteTasks(),
      ],
    );
  }
}
