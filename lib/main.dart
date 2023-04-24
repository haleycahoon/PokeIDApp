import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedextest/habitat_confirm.dart';
import 'home_screen.dart';

void main() {
  // initialive the hive (database local)
  //await Hive.initFlutter();

  //
  runApp(Pokemon());
}

class Pokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        theme: ThemeData(primarySwatch: Colors.red));
  }
}
