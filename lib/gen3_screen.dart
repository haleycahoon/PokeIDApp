// this file is to display all the pokemon for generation 3
import 'package:flutter/material.dart';
import 'package:pokedextest/habitat_confirm.dart';
import 'home_screen.dart';

class Gen3Screen extends StatefulWidget {
  const Gen3Screen({super.key});

  @override
  State<Gen3Screen> createState() => _Gen3ScreenState();
}

class _Gen3ScreenState extends State<Gen3Screen> {
  //idx for listing each pokemon
  // checkbox is tapped
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // define the BG color of the whole page
        backgroundColor: Colors.red[50],
        // appBar on the top of the screen "title bar"
        appBar: AppBar(
          title: Text('Gen 3 List of Pokemons'),
          //elevation: 0
          // the above line will make the appbar flat. do we want this? <=============================================
        ));
  }
}
