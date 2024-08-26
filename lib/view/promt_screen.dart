import 'package:flutter/material.dart';

class PromtScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const PromtScreen({super.key, required this.showPromptScreen});

  @override
  State<PromtScreen> createState() => _PromtScreenState();
}

class _PromtScreenState extends State<PromtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActionChip(label: Text("data")),
    );
  }
}
