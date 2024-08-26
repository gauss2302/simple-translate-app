import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key, required this.showPromptScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/spain.png")),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 80.0, left: 16.0, right: 16.0),
          child: Column(
            children: [Text("data")],
          ),
        ),
      ),
    );
  }
}
