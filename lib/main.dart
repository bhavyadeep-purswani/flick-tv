import 'package:demo_flutter/screens/home_screen/home_screen.dart';
import 'package:demo_flutter/screens/watch_screen/watch_screen.dart';
import 'package:demo_flutter/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        "/": (context) => HomeScreen(),
        "/watch": (context) => WatchScreen(),
      },
      title: 'Flutter Demo',
      theme: theme,
      initialRoute: "/",
    );
  }
}
