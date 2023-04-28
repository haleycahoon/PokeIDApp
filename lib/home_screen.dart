import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedextest/habitat_confirm.dart';
import 'pokedex.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
              top: 145,
              left: 145,
              child: ElevatedButton(
                  child: const Text("Kanto Pokédex"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen2Dex(
                                  startingIdx: 0,
                                  endingIdx: 151,
                                  title: 'Generation 1: Kanto Region',
                                )));
                  })),
          Positioned(
              top: 195,
              left: 145,
              child: ElevatedButton(
                  child: const Text("Johto Pokédex"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen2Dex(
                                startingIdx: 151,
                                endingIdx: 251,
                                title: 'Generation 2: Johto Region')));
                  })),
          Positioned(
              top: 245,
              left: 145,
              child: ElevatedButton(
                  child: const Text("Hoenn Pokédex"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gen2Dex(
                                startingIdx: 251,
                                endingIdx: 386,
                                title: 'Generation 3: Hoenn')));
                  })),
          Positioned(
              top: 295,
              left: 125,
              child: ElevatedButton(
                  child: const Text("Safari Zone Checklists"),
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
              top: 120,
              left: 40,
              child: Text(
                'What Pokémon are you looking for?',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ))
        ]));
  }
}
