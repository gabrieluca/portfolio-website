import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'constant.dart';
import 'home_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

//TODO Add launcher icon
//TODO Add responsivity
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello. I'm Gabriel!",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
