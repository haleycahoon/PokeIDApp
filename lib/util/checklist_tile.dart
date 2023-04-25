import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Helper Methods

Future<dynamic> getValue(String pokename) async {
  var urlEnd = '/api/v2/pokemon/$pokename';
  var url = Uri.https("pokeapi.co", urlEnd);
  http.Response response = await http.get(url);

  try {
    // if the response was successful
    if (response.statusCode == 200) {
      String data = response.body;
      // turn the data into something indexable
      var decodedData = jsonDecode(data);

      // get the url of a pokemon sprite
      // only supports pokemon -> gen 4 / HGSS and DP
      String picUrl = decodedData['sprites']['versions']['generation-iv']
          ['heartgold-soulsilver']['front_default'];

      return [picUrl];
    } else {
      print('response.statusCode not 200. failed.');
      return ['failed'];
    }
  } catch (e) {
    // if any error occurs, the error will be printed in the debug console
    print(e);
    return ['failed'];
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
  Future? _value; // array that contains the pokemon info
// summon the pokemon info + Initialize the state
  @override
  initState() {
    _value = getValue(widget.pokeName);
    super.initState();
  }

// given the pokemon name get the uri of a pokemon

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25),
        child: FutureBuilder(
            future: _value,
            initialData: 'Placeholder',
            builder: (
              BuildContext context,
              AsyncSnapshot<dynamic> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  children: [
                    const CircularProgressIndicator(),
                    Visibility(
                        visible: snapshot.hasData,
                        child: const Text("Loading checklist"))
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData && widget.pokeSeen == false) {
                  return Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(109, 136, 1, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Checkbox(
                            value: widget.pokeSeen,
                            onChanged: widget.onChanged),
                        // a picture of the target pokemon
                        Image.network(snapshot.data[0] as String),
                        // the name that appears inside of the box
                        // have this be a variable pokemon name
                        // given to the widget by an array
                        Text(
                          widget.pokeName,
                          style: const TextStyle(fontSize: 30),
                        ),
                      ]));
                } else if (snapshot.hasData && widget.pokeSeen == true) {
                  return Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(109, 136, 1, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Checkbox(
                            value: widget.pokeSeen,
                            onChanged: widget.onChanged),
                        // a picture of the target pokemon
                        Image.network(snapshot.data[0] as String,
                            //////////////////ONLY DIFFERENCE FROM ABOVE "ELSE IF"//////////////////
                            ///greys out the pokemon image
                            color: const Color.fromRGBO(255, 255, 255, 0.50),
                            colorBlendMode: BlendMode.modulate),

                        // the name that appears inside of the box
                        // have this be a variable pokemon name
                        // given to the widget by an array
                        Text(
                          widget.pokeName,
                          style: const TextStyle(fontSize: 30),
                        ),
                      ]));
                } else {
                  return const Text('empty data');
                }
              } else {}
              return Text('State: ${snapshot.connectionState}');
            }));
  }
}
