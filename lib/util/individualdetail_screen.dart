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

// ignore_for_file: prefer_interpolation_to_compose_strings

//
import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:pokedextest/util/pokeclass.dart';
import 'detail_util.dart';
import 'pokeclass.dart';

// sample pokemon
//String name = "Eevee";
String number = "#133";
String picture =
    "https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png";
List<dynamic> types = ["normal", null];
String height = "1' 00\"";
String weight = "14.3 lbs";
String category = "Transform";
int hp = 20;
int attack = 30;
int defense = 20;
int special_attack = 20;
int special_defense = 30;
int speed = 30;
int total = 150;
String xdescription =
    "Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives. Radiation from various stones causes this Pok\u00e9mon to evolve.";

// Helper Methods

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
        // tells you the name of the pokemon
        appBar: AppBar(title: Text(widget.poke.getName())),
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
