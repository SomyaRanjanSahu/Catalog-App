import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart'; // Importing material dart package

void main() {
  runApp(MyApp()); // runs the widgets of the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple), // for light theme
      darkTheme: ThemeData(brightness: Brightness.dark), // for dark theme
      initialRoute: "/home", // to run 'homepage' in the beginning
      routes: {
        "/": (context) => LoginPage(), // initial route
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
