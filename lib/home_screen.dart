import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedextest/gen1_screen.dart';
import 'package:pokedextest/gen2_screen.dart';
import 'package:pokedextest/gen3_screen.dart';
import 'package:pokedextest/future_test.dart';

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
                  fontSize: 20,
                ),
              )),
          Positioned(
              top: 200,
              left: 135,
              child: ElevatedButton(
                  child: const Text("Generation 1"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen1Screen()));
                  })),
          Positioned(
              top: 250,
              left: 135,
              child: ElevatedButton(
                  child: Text("Generation 2:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen2Screen()));
                  })),
          Positioned(
              top: 300,
              left: 135,
              child: ElevatedButton(
                  child: Text("Generation 3:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen3Screen()));
                  })),
          Positioned(
              top: 350,
              left: 125,
              child: ElevatedButton(
                  child: Text("Habitat Confirm:"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            //builder: (context) => const HabitatConfirm()));
                            builder: (context) => HabitatConfirm()));
                  })),
          Positioned(
            top: 40,
            left: 5,
            child: Image.asset(
              'assets/images/icon.png',
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
                  fontSize: 15,
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
