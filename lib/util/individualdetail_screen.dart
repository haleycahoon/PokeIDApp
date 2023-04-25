// this file is to display the individual pokemon that the user selects

// pokemon name
// pokemon number
// pokemon picture
// pokemon types
// pokemon height
// pokemon weight
// pokemon habitat

// initialize the thing its a stateful widget so it can get api things done

// have it pull the information
// using the pokedex number as a basis

// make datamembers to represent those things

//
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Helper Methods

class DetailScreen extends StatefulWidget {
  final String id;
  const DetailScreen({super.key, required this.id});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // define the BG color of the whole page
      backgroundColor: Colors.red[50],
      // appBar on the top of the screen "title bar"
      appBar: AppBar(),
    );
  }
}
