import 'package:flutter/material.dart';
import 'package:provider_mvvm/basics/home_screen.dart';
import 'package:provider_mvvm/basics/state_full_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REST With Provder MVVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StateFullScreen(),
    );
  }
}
