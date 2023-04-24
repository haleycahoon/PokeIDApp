import 'package:flutter/material.dart';
import 'package:pokedextest/habitat_confirm.dart';
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
        title: Text('Safari Zone: ' + widget.habitatName),
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
