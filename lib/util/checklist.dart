// Name: checklist.dart
// Function: HabitatCheck()
// loosely based on: https://www.youtube.com/watch?v=mMgr47QBZWA
// By Mitch KoKo
// Description: The user may tap checkboxes to "check off" pokemon from their list.
//              The state of the checkboxes saves if you leave the page (but not if you close the app)

import 'package:flutter/material.dart';
import 'package:pokedextest/util/checklist_tile.dart';

// Input: List (List of target habitat), String (name of target habitat)
class HabitatCheck extends StatefulWidget {
  final List habitatList;
  final String habitatName;
  const HabitatCheck(
      {super.key, required this.habitatList, required this.habitatName});

  @override
  State<HabitatCheck> createState() => _HabitatCheckState();
}

class _HabitatCheckState extends State<HabitatCheck> {
  // Whenever a checkbox is checked
  void checkboxChecked(bool? value, int idx) {
    setState(() {
      // toggle the check box from true<->false
      // and reassign the pokemon's pokeSeen value to be the opposite of what it was
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

      // loops through every item in a list of pokemon names
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
