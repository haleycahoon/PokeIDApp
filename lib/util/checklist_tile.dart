import 'package:flutter/material.dart';

class ChecklistTile extends StatelessWidget {
  final String pokeName;
  final bool pokeSeen;
  Function(bool?)? onChanged;

  ChecklistTile(
      {super.key,
      required this.pokeName,
      required this.pokeSeen,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 114, 7, 255),
              borderRadius: BorderRadius.circular(10),
              // above line of code makes box edges round. DO WE WANT? <====================================
            ),
            child: Row(children: [
              Checkbox(value: pokeSeen, onChanged: onChanged),
              // the name that appears inside of the box
              // have this be a variable pokemon name
              // given to the widget by an array
              Text(pokeName),
            ])));
  }
}
