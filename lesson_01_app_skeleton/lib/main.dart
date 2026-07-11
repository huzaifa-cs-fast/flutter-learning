// importing the necessary material for flutter widgets
import 'package:flutter/material.dart';

void main() {
  // run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // necessary constructor
  const MyApp({super.key});

  // always override the build method
  @override
  Widget build(BuildContext context) {
    // return the entire Material App
    return MaterialApp(
      debugShowCheckedModeBanner: true, // later it will be removed (false).
      home: HomeScreen(), // automatically shows the HomeScreen!
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return the comlete page skeleton i.e. Scaffold
    return Scaffold(
      // App Bar is the top bar for any app
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      // body is the major content area of the page
      body: Center(
        // Center makes its child widget to be centered
        child: Text("This is the body!"),
      ),
    );
  }
}
