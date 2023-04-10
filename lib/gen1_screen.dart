// this file is to display all the pokemon for generation 1
import 'package:flutter/material.dart';
import 'package:pokedextest/habitat_confirm.dart';
import 'home_screen.dart';

class Gen1Screen extends StatefulWidget {
  const Gen1Screen({super.key});

  @override
  State<Gen1Screen> createState() => _Gen1ScreenState();
}

class _Gen1ScreenState extends State<Gen1Screen> {
  //idx for listing each pokemon
  // checkbox is tapped
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // define the BG color of the whole page
        backgroundColor: Colors.red[50],
        // appBar on the top of the screen "title bar"
        appBar: AppBar(
          title: Text('Gen 1 List of Pokemons'),
          //elevation: 0
          // the above line will make the appbar flat. do we want this? <=============================================
        ));
  }
}
