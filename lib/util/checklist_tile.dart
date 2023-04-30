// Name: checklist_tile.dart
// Function: ChecklistTile()
// Description: Made for checklist.dart; Displays a checklist of pokemon accomapied by images

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Name: getValue()
// Input: String (name of target pokemon)
// Output: Future<String> (the url of the target pokemon)
Future<String> getValue(String pokename) async {
  // construct the url
  var urlEnd = '/api/v2/pokemon/$pokename';
  // get uri from url
  var url = Uri.https("pokeapi.co", urlEnd);
  // call to the api to get the full json of the pokemon
  http.Response response = await http.get(url);

  try {
    // if the response was successful
    if (response.statusCode == 200) {
      // interpret the json into something readable
      String data = response.body;
      var decodedData = jsonDecode(data);

      // intex to get the url of a pokemon sprite
      // only supports pokemon -> gen 4 / HGSS and DP
      String picUrl = decodedData['sprites']['versions']['generation-iv']
          ['heartgold-soulsilver']['front_default'];

      return picUrl;
      // if the API did not respond appropriately, put a placeholder img
    } else {
      return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/poke-ball.png';
    }
  } catch (e) {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/poke-ball.png';
  }
}

//////////////////////////////////////////////////////////////////////
// Class: ChecklistTile
// This class will create a stateful widget
// That contains an image and a name
// when the user presses a check box, the image of the pokemon will gray out signifying they have been seen
//////////////////////////////////////////////////////////////////////
class ChecklistTile extends StatefulWidget {
  // pokemon name is given
  final String pokeName;
  // bool which is defaulted to false.
  final bool pokeSeen;
  // when the checkbox is ticked this changes the pokeSeen value
  Function(bool?)? onChanged;

// constructor for the tile
  ChecklistTile(
      {super.key,
      required this.pokeName,
      required this.pokeSeen,
      required this.onChanged});

  // create the state
  @override
  State<ChecklistTile> createState() => _ChecklistTileState();
}

// with implementation, describes the tile
class _ChecklistTileState extends State<ChecklistTile> {
  Future? _value; // contains a single pokemon's imgUrl
// Initialize the state with the pokemon's url
  @override
  initState() {
    _value = getValue(widget.pokeName);
    super.initState();
  }

// Name: futureImg()
// Input: bool pokeseen
// Output: Widget (pokemon image OR progress indicator)
// Description: displays an image asynchronously given the url
  Widget futureImg(bool pokeseen) {
    return FutureBuilder(
        // future: the pokemon url
        future: _value,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          // if the image url has not yet been retrieved
          if (snapshot.connectionState == ConnectionState.waiting) {
            // return loading
            return const CircularProgressIndicator();
            // if the image url has been retrieved
          } else if (snapshot.hasData) {
            // check if the pokemon has been seen
            if (pokeseen) {
              // if so, display the image gray and dim
              return Image.network(snapshot.data as String,
                  color: const Color.fromRGBO(255, 255, 255, 0.50),
                  colorBlendMode: BlendMode.modulate);
              // if the pokemon has not been seen
            } else {
              // display the image as is (bright + colored)
              return Image.network(snapshot.data as String);
            }
            // if it is an error, dsiplay error message in place of the image
          } else if (snapshot.hasError) {
            return const Text("error");
          } else {
            return const Text("error");
          }
        });
  }

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25),
        // Future builder handles the image
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 187, 47),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Checkbox(value: widget.pokeSeen, onChanged: widget.onChanged),
              // a picture of the target pokemon
              futureImg(widget.pokeSeen),
              //spacer
              const SizedBox(
                width: 10,
                height: 5,
              ),
              // display the pokemon's name
              Text(
                capitalize(widget.pokeName),
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(223, 255, 255, 255)),
              ),
            ])));
  }
}
