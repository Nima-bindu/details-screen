import 'package:flutter/material.dart';
import 'package:details_screen/details_screen.dart';
import 'package:details_screen/list_screen.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/list',
      routes: {
        '/list': (context) => ListScreen(),
        '/details': (context) => DetailsScreen()
      },
    ));
