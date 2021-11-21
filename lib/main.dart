import 'package:flutter/material.dart'; // Importing material dart package

void main() {
  // main function
  runApp(MyApp()); // runs the widgets of the app
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to 30 days of flutter"),
          ),
        ),
      ),
    );
  }
}
