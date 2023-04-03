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
import 'package:pokedextest/util/checklist_tile.dart';

// Pretend array to display da pokemon with TESTING ONLY
List preMonNames = [
  ["Eevee", false],
  ["Gastly", false],
  ["Meowth", false],
  ["Gibble", false],
  ["Darkrai", false]
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
///\

class HabitatConfirm extends StatefulWidget {
  const HabitatConfirm({super.key});

  @override
  State<HabitatConfirm> createState() => _HabitatConfirmState();
}

class _HabitatConfirmState extends State<HabitatConfirm> {
  //idx for listing each pokemon
  int i = 0;
  // checkbox is tapped
  void checkboxChecked(bool? value, int idx) {
    setState(() {
      // the the box is "true"/ checked and it is tapped,
      // toggle the box to "false"/ unchecked
      if (preMonNames[idx][1] == true) {
        preMonNames[idx][1] = false;
      }
      // the box is "false"/ unchecked
      // toggle the box to "true"/checked
      else {
        preMonNames[idx][1] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // define the BG color of the whole page
      backgroundColor: Colors.red[50],
      // appBar on the top of the screen "title bar"
      appBar: AppBar(
        title: Text('A HABITAT NAME Checklist'),
        //elevation: 0
        // the above line will make the appbar flat. do we want this? <=============================================
      ),
      body: ListView(
        children: [
          // loops through every pokemon in a list of pokemon
          // and creates a checkbox for them
          
          while (preMonNames[i+1] != null){
            ChecklistTile(
              pokeName: preMonNames[i][0],
              pokeSeen: false,
              onChanged: (value) => checkboxChecked(value,i),
            ),}
        ],
      ),
    );
  }
}
