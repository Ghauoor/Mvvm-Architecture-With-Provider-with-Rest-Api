import 'package:flutter/material.dart';

class ValueNotifierListener extends StatelessWidget {
  ValueNotifierListener({super.key});
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use Notifier Listner'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _counter,
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _counter.value.toString(),
                  style: const TextStyle(fontSize: 50),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                    onPressed: () {
                      _counter.value = 0;
                    },
                    child: const Text('Reset'))
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
