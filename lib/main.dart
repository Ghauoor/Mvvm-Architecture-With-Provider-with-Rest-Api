import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/provider/count_provider.dart';
import 'package:provider_mvvm/provider/example_two_provider.dart';
import 'package:provider_mvvm/provider/favourite_provider.dart';
import 'package:provider_mvvm/provider/theme_provider.dart';
import 'package:provider_mvvm/screen/dark_theme_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleTwoProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Provider State Managemanet',
            themeMode: themeChanger.themeMode,
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                colorScheme: const ColorScheme.dark(
                  onPrimary: Colors.amberAccent,
                ),
                iconTheme: const IconThemeData(
                  color: Colors.red,
                )),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const DarkThemeScreen(),
          );
        },
      ),
    );
  }
}
