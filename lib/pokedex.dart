// Name: pokedex.dart
// Function: Dex(), PokemonsList
// Description: Displays a list of pokemon with accompanying buttons. The user can press the button
//              and be taken to a page which gives them a closer description of the pokemon DetailScreen() (in individualdetail_screen.dart)

import 'dart:convert';
import 'dart:async';
import 'util/pokeclass.dart';
import 'individualdetail_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Name: fetchPhotos()
// Input: http.Client
// Output: List<Pokemon>
// Description: Asynchrous. Fetches an entire json to send to another function
Future<List<Pokemon>> fetchPhotos(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://raw.githubusercontent.com/hungps/flutter_pokedex/master/assets/pokemons.json'));

  // Use the compute function to run parsePhotos in a separate isolate.
  // when parsephotos returns, the computer function will create Pokemon objects in order of ascending dex-number in a list
  return compute(parsePhotos, response.body);
}

// Name: parsePhotos()
// Input: String (the String version of our json from fetchPhotos)
// Output: List<Pokemon>
// A function that converts a response body into a List<Photo>.
List<Pokemon> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Pokemon>((json) => Pokemon.fromJson(json)).toList();
}

// Name:
class Dex extends StatefulWidget {
  // Constructor
  // Input String title, int startingIdx, int endingIdx
  const Dex(
      {super.key,
      required this.title,
      required this.startingIdx,
      required this.endingIdx});

  // Data members
  final String title;
  final int startingIdx;
  final int endingIdx;

  // createState based on the below class, _DexState
  @override
  State<Dex> createState() => _DexState();
}

class _DexState extends State<Dex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(0, 255, 178, 178),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 204, 204),
        extendBodyBehindAppBar: true,
        // title and back button
        appBar: AppBar(
          title: Text(widget.title),
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        // Grabs the list of pokemon
        // and runs the function PokemonsList in order to create a scrollable list of pokemon
        // within the range of the startingIdx and the endingIdx
        body: FutureBuilder<List<Pokemon>>(
          future: fetchPhotos(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return PokemonsList(
                pokemons: snapshot.data!,
                startingIdx: widget.startingIdx,
                endingIdx: widget.endingIdx,
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

// Name: PokemonsList()
// Input: List<pokemon>, int startingIdx (pokedex number we want to start at), int endingIdx(pokedex number we want to end at)
class PokemonsList extends StatelessWidget {
  const PokemonsList(
      {super.key,
      required this.pokemons,
      required this.startingIdx,
      required this.endingIdx});

  final int startingIdx;
  final int endingIdx;
  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    // build a grid 2 items wide
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        crossAxisCount: 2,
      ),
      itemCount: endingIdx - startingIdx,
      itemBuilder: (context, index) {
        {
          index = index + startingIdx;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
                backgroundColor: Color.fromARGB(0, 0, 0, 0),
                resizeToAvoidBottomInset: false,
                body: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(44, 203, 110, 110),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      const Align(alignment: Alignment(0.0, -0.0)),
                      Expanded(child: Image.network(pokemons[index].imageurl)),
                      // button with the pokemon's name on it
                      ElevatedButton(
                          // when the button is pressed, navigate to the individual detail screen of that pokemon
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                          poke: pokemons[index],
                                        )));
                          },
                          child: Text(
                            pokemons[index].name,
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ))
                    ],
                  ),
                )),
          );
        }
      },
    );
  }
}
