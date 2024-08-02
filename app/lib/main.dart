import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/app_cubit.dart';
import 'service/notification.dart';
import 'styles/themes.dart';
import 'util/globals.dart';
import 'util/routes.dart';
import 'view/Board/screens/boarding_screen.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit()..initDatabase(),
        ),
      ],
      child: MaterialApp(
        title: 'Notify app',
        debugShowCheckedModeBanner: false,
        navigatorKey: Globals.instance.navigatorKey,
        onGenerateRoute: (settings) => AppRoute.onGenerateRoutes(settings),
        theme: Themes.lightTheme,
        darkTheme: Themes.darkThem,
        themeMode: ThemeMode.system,
        home: const BoardingScreen(),
      ),
    );
  }
}
