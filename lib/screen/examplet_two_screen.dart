import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/provider/example_two_provider.dart';

class ExampleTwoScreen extends StatefulWidget {
  const ExampleTwoScreen({super.key});

  @override
  State<ExampleTwoScreen> createState() => _ExampleTwoScreenState();
}

class _ExampleTwoScreenState extends State<ExampleTwoScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    //final provider = Provider.of<ExampleTwoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleTwoProvider>(builder: (context, value, child) {
            return Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                value.set(val);
              },
            );
          }),
          Consumer<ExampleTwoProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(value.value),
                    ),
                    child: const Center(
                      child: Text('Container no 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(value.value),
                    ),
                    child: const Center(
                      child: Text('Container no 2'),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
