import 'package:flutter/material.dart';

class StateFullScreen extends StatefulWidget {
  const StateFullScreen({super.key});

  @override
  State<StateFullScreen> createState() => _StateFullScreenState();
}

class _StateFullScreenState extends State<StateFullScreen> {
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
          Text(DateTime.now().toString()),
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
