import 'package:flutter/material.dart';
import 'package:lv_gg/screens/homescreen.dart';
import 'package:lv_gg/screens/splashscreen.dart';

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
      },
    );
  }
}
