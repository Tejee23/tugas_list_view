import 'package:flutter/material.dart';
import 'detail_movie.dart';
import 'list_movie.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}