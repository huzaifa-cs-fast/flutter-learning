import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const darkNavy = Color(0xFF1A1A2E);
  static const gold = Color(0xFFFFD700);

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text & Styles",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            letterSpacing: 3.0,
            color: gold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text(
            "PROFILE CARD",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              letterSpacing: 3.0,
            ),
          ),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "Welcome, ",
                  style: TextStyle(color: Colors.grey),
                ),
                TextSpan(
                  text: "Flutter!",
                  style: TextStyle(color: gold),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Text(
            "User ID: 1234567890",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lesson: 03",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 24),
              Text(
                "Widgets: 08",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 24),
              Text(
                "Projects: 01",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: darkNavy,
    );
  }
}
