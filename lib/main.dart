import 'package:flutter/material.dart';
import 'package:lv_gg/screens/homescreen.dart';
import 'package:lv_gg/screens/splashscreen.dart';
import 'package:lv_gg/screens/classement.dart';
import 'package:lv_gg/screens/statistique.dart';
import 'package:lv_gg/screens/strings.dart';
import 'package:lv_gg/class/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stats League',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const SplashScreen(title: 'LV.GG - Stats League'),
      routes: <String, WidgetBuilder>{
        '/routeHome': (BuildContext context) =>
            const HomeScreen(title: "LV.GG"),
        '/routeClassement': (BuildContext context) =>
            const SplashScreen(title: "Classement"),
        '/routeStatistique': (BuildContext context) =>
            const SplashScreen(title: "Statistique"),
        '/routeChampion': (BuildContext context) =>
            const SplashScreen(title: "Champion"),
      },
    );
  }
}
