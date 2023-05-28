import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        num++;
        print(num);
      });
    });
  }

  int num = 0;

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateFull Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              DateTime.now().toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              num.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  num = 0;
                });
              },
              child: const Text('Reset'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
            print(num);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
