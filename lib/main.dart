import 'package:flutter/material.dart';
import 'package:journey_to_tuva/src/routing/routes.dart';
import 'package:journey_to_tuva/src/screens/games.dart';
import 'package:journey_to_tuva/src/screens/levels.dart';
import 'package:journey_to_tuva/src/screens/login.dart';
import 'package:journey_to_tuva/src/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventures of Tuva',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.initialRoute: (context) => const MyHomePage(title: "Уроки"),
        Routes.login: (context) => Login(),
        Routes.games: (context) => Games(),
        Routes.profile: (context) => ProfileScreen(),
      },
      onGenerateRoute: (routeSettings) {
        var path = routeSettings.name?.split('/');
      },
    );
  }
}
