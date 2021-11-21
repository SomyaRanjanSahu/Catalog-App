import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart'; // Importing material dart package

void main() {
  runApp(MyApp()); // runs the widgets of the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
