import 'package:flutter/material.dart';

import '../../../components/build_app_bar.dart';
import '../widgets/build_body.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Schedule"),
      body: const BuildBody(),
    );
  }
}
