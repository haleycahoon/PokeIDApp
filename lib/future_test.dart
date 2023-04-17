import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// declare a widget w capcity for change

Future<String> getValue() async {
  var url = Uri.https("pokeapi.co", '/api/v2/pokemon/eevee');
  http.Response response = await http.get(url);

  try {
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      String picUrl = decodedData['sprites']['versions']['generation-iii']
          ['emerald']['front_default'];
      print(picUrl);
      return picUrl;
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
  Future<String>? _value;

  @override
  initState() {
    super.initState();
    _value = getValue();
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
          child: FutureBuilder<String>(
            future: _value,
            initialData: 'Demo Name',
            builder: (
              BuildContext context,
              AsyncSnapshot<String> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Visibility(
                      visible: snapshot.hasData,
                      child: Text(
                        snapshot.data,
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
                  return Text(snapshot.data,
                      style: const TextStyle(color: Colors.cyan, fontSize: 36));
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
