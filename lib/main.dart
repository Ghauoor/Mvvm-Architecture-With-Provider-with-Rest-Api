import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/provider/count_provider.dart';
import 'package:provider_mvvm/screen/count_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'REST With Provder MVVM',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CountExample(),
      ),
    );
  }
}
