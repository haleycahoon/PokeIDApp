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
    const title = 'Generation 2';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            // CHANGE THIS NUMBER TO VARIABLE THAT HOLDS HOW MANY POKEMON IN LIST
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}
