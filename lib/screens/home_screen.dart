import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463227),
        title: const Text(
          "Learning App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xfffffde4),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Nav(name: "Number", color: Color(0xffff9700)),
              Nav(name: "Family Members", color: Color(0xff5c8b3d)),
              Nav(name: "Colors", color: Color(0xff854cad)),
              Nav(name: "Phrases", color: Color(0xff50b0d6)),
            ],
          ),
        ),
      ),
    );
  }
}