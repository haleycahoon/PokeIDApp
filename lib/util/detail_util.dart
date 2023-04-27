import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

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

Widget spacer() {
  return const SizedBox(
    width: 5,
    height: 5,
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
      spacer(),
      statBox("HP", hp),
      spacer(),
      statBox("Attack", attack),
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
            width: 230,
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
