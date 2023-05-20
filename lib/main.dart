import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'home_screen.dart';
import 'constant.dart';

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
      title: 'Gabriel Luca Ruiz',
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
