import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const EmulatorApp());
}

class EmulatorApp extends StatelessWidget {
  const EmulatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobile Emulator",
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
