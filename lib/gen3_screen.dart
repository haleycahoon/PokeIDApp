import 'dart:convert';
import 'dart:async';
import 'util/pokeclass.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedextest/home_screen.dart';

Future<List<Pokemon>> fetchPhotos(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://raw.githubusercontent.com/hungps/flutter_pokedex/master/assets/pokemons.json'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Pokemon> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Pokemon>((json) => Pokemon.fromJson(json)).toList();
}

class Gen3Dex extends StatefulWidget {
  const Gen3Dex({super.key, required this.title});

  final String title;

  @override
  State<Gen3Dex> createState() => _Gen3DexState();
}

class _Gen3DexState extends State<Gen3Dex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: FutureBuilder<List<Pokemon>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return PokemonsList(pokemons: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class PokemonsList extends StatelessWidget {
  const PokemonsList({super.key, required this.pokemons});

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 2,
        crossAxisCount: 2,
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        {
          index = index + 251;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Column(
                  children: [
                    Expanded(child: Image.network(pokemons[index].imageurl)),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: Text(pokemons[index].name))
                  ],
                )),
          );
        }
      },
    );
  }
}
