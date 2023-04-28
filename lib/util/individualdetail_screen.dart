// this file is to display the individual pokemon that the user selects

// pokemon name
// pokemon number
// pokemon picture
// pokemon types
// pokemon height
// pokemon weight
// pokemon habitat

// initialize the thing its a stateful widget so it can get api things done

// have it pull the information
// using the pokedex number as a basis

// make datamembers to represent those things

import 'package:flutter/material.dart';
import 'detail_util.dart';
import 'pokeclass.dart';

class DetailScreen extends StatefulWidget {
  final Pokemon poke;
  const DetailScreen({super.key, required this.poke});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // define the BG color of the whole page
        backgroundColor: Color.fromARGB(255, 255, 165, 165),
        // appBar on the top of the screen "title bar"
        appBar: AppBar(title: Text("The ${widget.poke.category} Pokémon")),
        body: Column(
          children: [
            logo(),
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
        ));
  }
}
