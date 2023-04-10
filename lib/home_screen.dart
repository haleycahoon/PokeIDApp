import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedextest/gen1_screen.dart';
import 'package:pokedextest/gen2_screen.dart';
import 'package:pokedextest/gen3_screen.dart';

import 'package:pokedextest/habitat_confirm.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var PokeAPI = "https://pokeapi.co/api/v2/pokemon/ditto";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/images/backgroundHome.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: 55,
              left: 85,
              child: Text(
                'PokéID',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              )),
          Positioned(
              top: 450,
              left: 165,
              child: ElevatedButton(
                  child: const Text("Gen 1:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen1Screen()));
                  })),
          Positioned(
              top: 500,
              left: 165,
              child: ElevatedButton(
                  child: Text("Gen 2:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen2Screen()));
                  })),
          Positioned(
              top: 550,
              left: 165,
              child: ElevatedButton(
                  child: Text("Gen 3:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen3Screen()));
                  })),
          Positioned(
              top: 600,
              left: 135,
              child: ElevatedButton(
                  child: Text("Habitat Confirm:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HabitatConfirm()));
                  })),
          Positioned(
            top: 40,
            left: 5,
            child: Image.asset(
              'assets/images/pokeball.jpg',
              width: 70,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
              top: 390,
              left: 5,
              child: Text(
                'What Pokemon are you looking for?',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
        ]));
  }

  void getPokemonInfo() {
    var url = Uri.https("pokeapi.co", "/api/v2/pokemon/ditto");
    http.get(url).then((value) {
      print(value.body);
    });
  }
}
