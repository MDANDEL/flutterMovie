import 'package:flutter/material.dart';
import 'package:flutter_navigation_starter/tabs.dart';

import 'models/api_movies.dart';
import 'models/movie.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Tabs(),
    );
  }
}