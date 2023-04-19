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
    const title = 'Generation 1';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(151, (index) {
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
