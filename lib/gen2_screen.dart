// this file is to display all the pokemon for generation 2
import 'package:flutter/material.dart';
import 'package:pokedextest/habitat_confirm.dart';
import 'home_screen.dart';

class Gen2Screen extends StatefulWidget {
  const Gen2Screen({super.key});

  @override
  State<Gen2Screen> createState() => _Gen2ScreenState();
}

class _Gen2ScreenState extends State<Gen2Screen> {
  //idx for listing each pokemon
  // checkbox is tapped
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // define the BG color of the whole page
        backgroundColor: Colors.red[50],
        // appBar on the top of the screen "title bar"
        appBar: AppBar(
          title: Text('Generation 2 Pokémon'),
          //elevation: 0
          // the above line will make the appbar flat. do we want this? <=============================================
        ));
  }
}
