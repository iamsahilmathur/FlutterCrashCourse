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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Box(color: Colors.green, str: "I am Green"),
            Box(color: Colors.red, str: "I am Red"),
            Box(color: Colors.yellow, str: "I am Yellow")
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final Color color;
  final String str;

  const Box({super.key, required this.color, required this.str});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10)]),
      child: Text(
        str,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
