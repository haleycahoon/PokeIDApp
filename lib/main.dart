// Name: main.dart
// Launches the app, then sends the user to HomeScreen() (in home_screen.dart)

import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(Pokemon());
}

class Pokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // remove debug banner
        home: const HomeScreen(),
        theme: ThemeData(primarySwatch: Colors.red));
  }
}
