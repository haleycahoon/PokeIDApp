// Name: habitat_confirm:
//
// This screen is where: The user may choose a habitat they wish to "explore".
//
// The user shall choose a habitat from a list.
// Before moving onto the "habitat_checklist" screen,:
// The habitat value retrieves a list of Pokemon that live in the habitat
// The list will be saved
// and then  the list will be sent to the "habitat_checklist"
// The user may press a "home button" to return to the main menu

import 'package:flutter/material.dart';

// Pretend array to display da pokemon with TESTING ONLY
var preMonNames = ["Eevee", "Gastly", "Meowth", "Gibble", "Darkrai"];

/////////////
/// List of habitats
/////////////
/// 1: Cave[29]
/// 2: Forest[71]
/// 3: Grassland[80]
/// 4: Mountain
/// 5. Rare (legendaries)
/// 6. Rough-Terrain
/// 7. Sea
/// 8. Urban
/// 9. Water's-Edge
///
/// //////////////////
/// Functions
/// /////////////////
///
///
/// Name:
///
///
///
///
///
///
///
///
///
/// ////////////
/// MAIN FUNCTION
/// ////////////
///
///
///
/// void main() {

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
