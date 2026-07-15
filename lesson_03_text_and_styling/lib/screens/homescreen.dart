import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // defining the colors at the top
  static const darkBg = Color.fromARGB(255, 38, 66, 80);
  static const contrast = Color.fromARGB(255, 255, 160, 7);

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lesson # 03",

          // Basic Text Styling in App Bar
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 2.5,
            color: darkBg,
          ),
        ),
        backgroundColor: contrast,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            // Rich Text is texts with different styles
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                ),
                children: [
                  TextSpan(
                    text: "Welcome, ",
                    style: TextStyle(
                      color: Colors.white,
                      decorationColor: contrast,
                    ),
                  ),
                  TextSpan(
                    text: "Huzu!",
                    style: TextStyle(
                      color: contrast,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decorationColor: Colors.white,
                    ),
                  ),
                ],
              ),
              textScaler: TextScaler.linear(1.3),
            ),
            SizedBox(height: 35),
            Text(
              "Lesson # 03: Text & Styles",
              textAlign: TextAlign.center, // Alignment of text
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 237, 233, 227),
              ),
            ),
            SizedBox(height: 5),
            Text(
              // Text Overflow
              "This is a very long text that might overflow from the visible screen!",
              maxLines: 1,
              overflow: TextOverflow.ellipsis, // shows "..." if overflows
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 244, 228, 205),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: darkBg,
    );
  }
}
