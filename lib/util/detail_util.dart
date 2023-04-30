// Name: detail_util.dart
// Functions: logo(), pokeName(), pokeFace(), pokeTypes(), statBox(), spacer(), pokeDesc(), pokeStats()
// Description: Widgets to construct individualdetailscreen.dart

import 'package:flutter/material.dart';

// Name: logo()
// Input: N/A
// Output: Widget (row)
// Description: Displays the pokeID logo
Widget logo() {
  return Row(
    children: [
      Image.asset(
        'assets/images/icon.png',
        width: 50,
        height: 50,
      ),
      Text(
        'PokéID',
        style: TextStyle(
          color: Colors.black.withOpacity(0.6),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ],
  );
}

// Name: pokeName()
// Input: String (name of the pokemon)
// Output: Widget column
// Description: Returns a center alligned text of the pokemon's name
Widget pokeName(String name) {
  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Align(
          alignment: Alignment.center,
          child: Text(name,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
                fontSize: 40,
              )),
        ),
      )
    ],
  );
}

// Name: pokeFace()
// Input: String (image url)
// Output: Widget column
// Description: returns a center alligned 300x300 image of the target pokemon
Widget pokeFace(String picture) {
  return Column(children: [
    Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 300,
        width: 300,
        child: Image.network(picture),
      ),
    )
  ]);
}

// Name: pokeTypes()
// Input: List<dynamic> (contains up to 2 Strings of the type)
// Output: Widget Text and Container
// Description: returns a text saying "Type"
//              Underneath that is the types listed inside of a white background container w/ round edges
Widget pokeTypes(List<dynamic> types) {
  String text;
  (types.length > 1) ? text = types[0] + "     " + types[1] : text = types[0];
  return Column(
    children: [
      Text("Type",
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 13, right: 13, top: 3, bottom: 3),
                child: Text(text,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
              ),
            ),
          )
        ],
      )
    ],
  );
}

// Name: statBox()
// Input: String (name of the stat), Int (value of the stat)
// Output: Widget container
// Description: for use in pokeStats()
//              Returns the stat's name and value in a white box with rounded edges
Widget statBox(String statName, int stat) {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.only(left: 13, right: 13, top: 3, bottom: 3),
      child: Text("$statName: $stat",
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    ),
  );
}

// Name: spacer()
// Input: N/A
// Output: Widget sizedbox
// Descripton: a blank sized box for consistent formatting purposes
Widget spacer() {
  return const SizedBox(
    width: 5,
    height: 5,
  );
}

// Name: pokeStats()
// Input: seven int values representing the 6 stats + their total
// Output: Widget column
// Description: Displays the stats in a column format.
Widget pokeStats(int hp, int attack, int defense, int special_attack,
    int special_defense, int speed, int total) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Stats",
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )),
      spacer(),
      statBox("HP", hp),
      spacer(),
      statBox("Attack", attack),
      spacer(),
      statBox("Defense", defense),
      spacer(),
      statBox("Sp. Atk", special_attack),
      spacer(),
      statBox("Sp. Def", special_defense),
      spacer(),
      statBox("Speed", speed),
      spacer(),
      statBox("Total", total),
    ],
  );
}

// Name: pokeDesc()
// Input: String (the pokedex entry)
// Output: Widget column/container
// Description: Displays the pokedex entry inside of a big white box with rounded edges
Widget pokeDesc(String xdescription) {
  return Column(
    children: [
      Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 13, right: 13, top: 3, bottom: 3),
          child: SizedBox(
            width: 220,
            height: 250,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                xdescription,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
