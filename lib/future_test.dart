import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// declare a widget w capcity for change

Future<dynamic> getValue(String pokename) async {
  var urlEnd = '/api/v2/pokemon/' + pokename;
  var url = Uri.https("pokeapi.co", urlEnd);
  http.Response response = await http.get(url);

  try {
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);

      String picUrl = decodedData['sprites']['versions']['generation-iii']
          ['emerald']['front_default'];
      String type = decodedData['types'][0]['type']['name'];

      return [picUrl, type];
    } else {
      print('response.statusCode not 200. failed.');
      return 'failed';
    }
  } catch (e) {
    print('error when trying to get response. failed.');
    return 'failed';
  }
}

class FutureBuilderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FutureBuilderDemoState();
  }
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  Future? _value;

  @override
  initState() {
    //_value = getValue(pokename);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('Flutter FutureBuilder Demo'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: FutureBuilder(
            future: _value,
            initialData: 'Demo Name',
            builder: (
              BuildContext context,
              AsyncSnapshot<dynamic> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  children: [
                    CircularProgressIndicator(),
                    Visibility(
                      visible: snapshot.hasData,
                      child: Text(
                        snapshot.data[1] as String,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    )
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  return Column(
                    children: [
                      Image.network(snapshot.data[0] as String),
                      Text((snapshot.data[1] as String))
                    ],
                  );
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          ),
        ),
      ),
    );
  }
}
