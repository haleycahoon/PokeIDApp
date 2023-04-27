// Name: checklist.dart
//
// On this screen: The user may tap icons of the pokemon to "check off" their list
//
// The user has chosen a habitat in "habitat_confirm"
// And "habitat_checklist" has recieved a list of pokemon who live the the specified habitat
// The app shall generate a list of pokemon with the name and photo in boxes. The image is defaultly colored
// The boxes, in addition, have a checkbox which can be tapped
// When tapped, the box is filled in and the image is "greyed out"
// The state may or may not be saved...
// THe user may press a "home button" to return to the main menu

import 'package:flutter/material.dart';
import 'package:pokedextest/util/checklist_tile.dart';

class HabitatCheck extends StatefulWidget {
  final List habitatList;
  final String habitatName;
  const HabitatCheck(
      {super.key, required this.habitatList, required this.habitatName});

  @override
  State<HabitatCheck> createState() => _HabitatCheckState();
}

class _HabitatCheckState extends State<HabitatCheck> {
  //idx for listing each pokemon
  // checkbox is tapped
  void checkboxChecked(bool? value, int idx) {
    setState(() {
      // toggle the check box from true<->false
      widget.habitatList[idx][1] = !widget.habitatList[idx][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // define the BG color of the whole page
      backgroundColor: Colors.red[50],
      // appBar on the top of the screen "title bar"
      appBar: AppBar(
        title: Text('Safari Zone: ${widget.habitatName}'),
      ),

      // loops through every pokemon in a list of pokemon
      // and creates a checkbox for them
      body: ListView.builder(
        itemCount: widget.habitatList.length,
        itemBuilder: (context, i) {
          return ChecklistTile(
            pokeName: widget.habitatList[i][0],
            pokeSeen: widget.habitatList[i][1],
            onChanged: (value) => checkboxChecked(value, i),
          );
        },
      ),
    );
  }
}
