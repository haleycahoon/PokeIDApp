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

// sample pokemon
String name = "Eevee";
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

Widget pokeName(String name) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Align(
          alignment: Alignment.centerRight,
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

Widget pokeTypes(List<dynamic> types) {
  String text;
  (types[1] != null) ? text = types[0] + "     " + types[1] : text = types[0];
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

      const SizedBox(
        width: 5,
        height: 5,
      ), // blank spacer->

      statBox("HP", hp),
      const SizedBox(
        width: 10,
        height: 10,
      ),
      statBox("Attack", attack),
      const SizedBox(
        width: 10,
        height: 10,
      ),
      statBox("Defense", defense),
      const SizedBox(
        width: 10,
        height: 10,
      ),
      statBox("Sp. Atk", special_attack),
      const SizedBox(
        width: 10,
        height: 10,
      ),
      statBox("Sp. Def", special_defense),
      const SizedBox(
        width: 10,
        height: 10,
      ),
      statBox("Speed", speed),
      const SizedBox(
        width: 10,
        height: 10,
      ),
      statBox("Total", total),
    ],
  );
}

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
            width: 250,
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

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // define the BG color of the whole page
        backgroundColor: Color.fromARGB(255, 140, 255, 165),
        // appBar on the top of the screen "title bar"
        // tells you the name of the pokemon
        appBar: AppBar(title: Text(name)),
        body: Column(
          children: [
            logo(),
            pokeName(name),
            pokeFace(picture),
            pokeTypes(types),
            Row(
              children: [
                pokeStats(hp, attack, defense, special_attack, special_defense,
                    speed, total),
                pokeDesc(xdescription)
              ],
            ),
          ],
        ));
  }
}
