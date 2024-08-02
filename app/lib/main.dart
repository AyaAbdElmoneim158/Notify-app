import 'package:flutter/material.dart';

import 'service/notification.dart';
import 'styles/themes.dart';
import 'util/globals.dart';
import 'util/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationApi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notify app',
      debugShowCheckedModeBanner: false,
      navigatorKey: Globals.instance.navigatorKey,
      onGenerateRoute: (settings) => AppRoute.onGenerateRoutes(settings),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkThem,
      themeMode: ThemeMode.system,
      home: const BoardingScreen(),
    );
  }
}
