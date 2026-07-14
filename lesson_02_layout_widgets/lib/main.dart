import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // later false
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lesson 02")),
      body: Center(
        // Center aligns all items in the center of the body! But it has only one child
        child: Column(
          // The Centered Main Axis Alignment makes all its children widgets aligned to be centered
          mainAxisAlignment: MainAxisAlignment.center,
          // In column, the child widgets are vertically aligned
          children: [
            Text("Hello"),
            Text("Flutter"),
            Text("World"),
            // A sized box is for leaving up an empty space for better UI
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // In row, child widgets are horizontally aligned
              children: [
                Icon(Icons.waving_hand),
                SizedBox(width: 5),
                Text("Hello"),
                SizedBox(width: 10),
                Text("Flutter!"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
