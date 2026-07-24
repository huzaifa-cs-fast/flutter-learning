import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const darkBg = Color.fromARGB(255, 2, 38, 56);
  static const creamy = Color.fromARGB(211, 248, 251, 236);
  static const darkCreamy = Color.fromARGB(255, 104, 105, 99);
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBg,
      appBar: AppBar(
        title: Text(
          "Lesson #04",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 3.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 12),
            Container(
              width: double.infinity, // complete width of screen
              height: 80,
              color: creamy,
              child: Center(
                child: Text(
                  "Basic Container",
                  // basic container has width, height, color, and a child widget!
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: darkBg,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              // This is a Decorated Container
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                color: creamy,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: darkCreamy, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.7),
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Advanced Container",
                  style: TextStyle(
                    fontSize: 18,
                    color: darkBg,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    decorationColor: darkBg,
                    letterSpacing: 1.5,
                    wordSpacing: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ), // even height is zero (outside space is being shown)
            Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.all(30), // space OUTSIDE
              padding: EdgeInsets.all(24), // space INSIDE
              decoration: BoxDecoration(
                color: creamy,
                borderRadius: BorderRadius.circular(36),
                border: Border.all(color: darkCreamy, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(-4, 4),
                  ),
                ],
              ),
              child: Text(
                "This is a text with Margin & Padding",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 3.0,
                  color: darkBg,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 34),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  999,
                ), // Huge Number = Circular kinda
                border: Border.all(color: darkCreamy, width: 3.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [creamy, darkCreamy],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
                    wordSpacing: 3.0,
                  ),
                  children: [
                    TextSpan(
                      text: "Gradient ",
                      style: TextStyle(
                        color: const Color.fromARGB(213, 3, 78, 115),
                      ),
                    ),
                    TextSpan(
                      text: "Conatiner",
                      style: TextStyle(color: darkBg),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
