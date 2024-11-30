import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "CrashCourse",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides basic structure for the app like:- if we want to add appbar in application
    return Scaffold(
      appBar: AppBar(
        title: const Text("CrashCourse"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Colors.teal,
              gradient: LinearGradient(colors: [
                Colors.teal,
                Colors.tealAccent
              ]),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.grey,blurRadius: 10)
            ]
          ),
          child: const Text(
            textAlign: TextAlign.center,
            "I am a box",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
