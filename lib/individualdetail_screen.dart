// Name: individualdetail_screen.dart
// Function: DetailScreen()
// Description: For use in pokedex.dart
//              Displays the information of a single pokemon
//              Uses utility from detail_util.dart
//

import 'package:flutter/material.dart';
import 'util/detail_util.dart';
import 'util/pokeclass.dart';

class DetailScreen extends StatefulWidget {
  final Pokemon poke;
  const DetailScreen({super.key, required this.poke});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

// Name: getColor()
// Input: Pokemon
// Output: Color
// Description: For the background color in the individual detail screen. Depending on the type of pokemon, the color scheme will change
Color getColor(Pokemon poke) {
  if (poke.typeofpokemon[0] == "Normal") {
    return const Color.fromARGB(255, 255, 208, 165);
  } else if (poke.typeofpokemon[0] == "Fire") {
    return const Color.fromARGB(255, 255, 195, 152);
  } else if (poke.typeofpokemon[0] == "Water") {
    return const Color.fromARGB(255, 185, 193, 255);
  } else if (poke.typeofpokemon[0] == "Grass") {
    return const Color.fromARGB(255, 171, 255, 173);
  } else if (poke.typeofpokemon[0] == "Electric") {
    return const Color.fromARGB(255, 253, 255, 137);
  } else if (poke.typeofpokemon[0] == "Ice") {
    return const Color.fromARGB(255, 187, 254, 255);
  } else if (poke.typeofpokemon[0] == "Fighting") {
    return const Color.fromARGB(255, 255, 185, 185);
  } else if (poke.typeofpokemon[0] == "Poison") {
    return const Color.fromARGB(255, 224, 168, 253);
  } else if (poke.typeofpokemon[0] == "Ground") {
    return const Color.fromARGB(255, 212, 192, 142);
  } else if (poke.typeofpokemon[0] == "Flying") {
    return const Color.fromARGB(255, 160, 236, 255);
  } else if (poke.typeofpokemon[0] == "Psychic") {
    return const Color.fromARGB(255, 255, 171, 230);
  } else if (poke.typeofpokemon[0] == "Bug") {
    return const Color.fromARGB(255, 223, 251, 161);
  } else if (poke.typeofpokemon[0] == "Rock") {
    return const Color.fromARGB(255, 221, 178, 145);
  } else if (poke.typeofpokemon[0] == "Ghost") {
    return const Color.fromARGB(255, 221, 182, 251);
  } else if (poke.typeofpokemon[0] == "Dark") {
    return const Color.fromARGB(255, 159, 156, 153);
  } else if (poke.typeofpokemon[0] == "Dragon") {
    return const Color.fromARGB(255, 233, 171, 252);
  } else if (poke.typeofpokemon[0] == "Steel") {
    return const Color.fromARGB(255, 190, 190, 190);
  } else if (poke.typeofpokemon[0] == "Fairy") {
    return const Color.fromARGB(255, 253, 195, 206);
  } else {
    return Colors.black;
  }
}

// Name: getColor2()
// Input: Pokemon
// Output: Color
// Description: For the appBar in the individual detail screen. Depending on the type of pokemon, the color scheme will change
Color getColor2(Pokemon poke) {
  if (poke.typeofpokemon[0] == "Normal") {
    return const Color.fromARGB(255, 194, 150, 109);
  } else if (poke.typeofpokemon[0] == "Fire") {
    return const Color.fromARGB(255, 192, 141, 104);
  } else if (poke.typeofpokemon[0] == "Water") {
    return const Color.fromARGB(255, 130, 139, 201);
  } else if (poke.typeofpokemon[0] == "Grass") {
    return const Color.fromARGB(255, 121, 201, 122);
  } else if (poke.typeofpokemon[0] == "Electric") {
    return const Color.fromARGB(255, 208, 210, 98);
  } else if (poke.typeofpokemon[0] == "Ice") {
    return const Color.fromARGB(255, 136, 207, 208);
  } else if (poke.typeofpokemon[0] == "Fighting") {
    return const Color.fromARGB(255, 200, 130, 130);
  } else if (poke.typeofpokemon[0] == "Poison") {
    return const Color.fromARGB(255, 176, 124, 202);
  } else if (poke.typeofpokemon[0] == "Ground") {
    return const Color.fromARGB(255, 165, 147, 102);
  } else if (poke.typeofpokemon[0] == "Flying") {
    return const Color.fromARGB(255, 102, 169, 186);
  } else if (poke.typeofpokemon[0] == "Psychic") {
    return const Color.fromARGB(255, 198, 117, 174);
  } else if (poke.typeofpokemon[0] == "Bug") {
    return const Color.fromARGB(255, 164, 190, 109);
  } else if (poke.typeofpokemon[0] == "Rock") {
    return const Color.fromARGB(255, 169, 131, 102);
  } else if (poke.typeofpokemon[0] == "Ghost") {
    return const Color.fromARGB(255, 164, 126, 194);
  } else if (poke.typeofpokemon[0] == "Dark") {
    return const Color.fromARGB(255, 112, 106, 100);
  } else if (poke.typeofpokemon[0] == "Dragon") {
    return const Color.fromARGB(255, 190, 129, 208);
  } else if (poke.typeofpokemon[0] == "Steel") {
    return const Color.fromARGB(255, 134, 134, 134);
  } else if (poke.typeofpokemon[0] == "Fairy") {
    return const Color.fromARGB(255, 212, 150, 162);
  } else {
    return Colors.black;
  }
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
          backgroundColor: getColor(widget.poke),
          // define the BG color of the whole page
          // appBar on the top of the screen "title bar"
          appBar: AppBar(
              title: Text("The ${widget.poke.category} Pokémon"),
              backgroundColor: getColor2(widget.poke)),
          body: Column(
            children: [
              pokeName(widget.poke.name),
              pokeFace(widget.poke.imageurl),
              pokeTypes(widget.poke.typeofpokemon),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    pokeStats(
                        widget.poke.hp,
                        widget.poke.attack,
                        widget.poke.defense,
                        widget.poke.special_attack,
                        widget.poke.special_defense,
                        widget.poke.speed,
                        widget.poke.total),
                    spacer(),
                    spacer(),
                    pokeDesc(widget.poke.xdescription)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
