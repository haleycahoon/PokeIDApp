// Name: habitat_confirm:
// based on: https://www.youtube.com/watch?v=mMgr47QBZWA
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
import 'package:pokedextest/util/checklist.dart';
import 'package:pokedextest/util/checklist_tile.dart';

// Pretend array to display da pokemon with TESTING ONLY
List habitatList = [
  ["eevee", false],
  ["gastly", false],
  ["meowth", false],
  ["darkrai", false]
];

List cave = [
  ["zubat", false],
  ["diglett", false]
];

List forest = [
  ["caterpie", false],
  ["weedle", false]
];

List grassland = [
  ["bulbasaur", false],
  ["rattata", false]
];

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
/// Name: summon list of pokemon
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
///\
const double insets = 8;
const double sizeW = 50;
const double sizeL = 100;
const double fontS = 20;

class HabitatConfirm extends StatefulWidget {
  @override
  _HabitatConfirmState createState() => _HabitatConfirmState();
}

class _HabitatConfirmState extends State<HabitatConfirm> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/habitatconfirmbg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          // appBar on the top of the screen "title bar"
          appBar: AppBar(
            title: Text('Habitat Confirm'),
          ),
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          body: Column(children: [
            Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'What habitat are you exploring?',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      backgroundColor: Color.fromARGB(187, 255, 255, 255)),
                )),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Cave",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: cave, habitatName: "Cave")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: Text(
                      "Forest",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: forest, habitatName: "Forest")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: Text(
                      "Grassland",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: grassland,
                                  habitatName: "Grassland")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: Text(
                      "Trial",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              //builder: (context) => const HabitatConfirm()));
                              builder: (context) => HabitatCheck(habitatList: [
                                    ["eevee", false],
                                    ["gastly", false],
                                    ["meowth", false],
                                    ["darkrai", false]
                                  ], habitatName: "Test")));
                    })),
          ])),
    );
  }
}
