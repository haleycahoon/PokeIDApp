import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Class: ChecklistTile
// This class will create a stateful widget
// That contains a
class ChecklistTile extends StatefulWidget {
  final String pokeName;
  final bool pokeSeen;
  Function(bool?)? onChanged;

  ChecklistTile(
      {super.key,
      required this.pokeName,
      required this.pokeSeen,
      required this.onChanged});

  @override
  State<ChecklistTile> createState() => _ChecklistTileState();
}

class _ChecklistTileState extends State<ChecklistTile> {
// summon the pokemon info (using pokename)
  String getPokeUrlEnd() {
    return "/api/v2/pokemon/${widget.pokeName}";
  }

  final Future<String> _url = Future<String>.delayed(
    const Duration(seconds: 2),
    () => 'Data Loaded',
  );

// given the pokemon name get the uri of a pokemon

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 114, 7, 255),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Checkbox(value: widget.pokeSeen, onChanged: widget.onChanged),
              // a picture of the target pokemon
              Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/132.png'),
              // the name that appears inside of the box
              // have this be a variable pokemon name
              // given to the widget by an array
              Text(widget.pokeName),
            ])));
  }
}
