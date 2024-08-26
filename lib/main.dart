import 'package:flutter/material.dart';
import 'package:myapp/components/switch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SwitchPage();
  }
}
