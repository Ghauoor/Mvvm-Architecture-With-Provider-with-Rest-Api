import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';

class FavouriteitemScreen extends StatefulWidget {
  const FavouriteitemScreen({super.key});

  @override
  State<FavouriteitemScreen> createState() => _FavouriteitemScreenState();
}

class _FavouriteitemScreenState extends State<FavouriteitemScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Item Screen'),
      ),
      body: favouriteProvider.selectedArr.isEmpty
          ? const Center(
              child: Text(
                'No favorite items',
                style: TextStyle(fontSize: 16),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: favouriteProvider.selectedArr.length,
                    itemBuilder: (BuildContext context, int index) {
                      final selectedItemIndex =
                          favouriteProvider.selectedArr[index];
                      return ListTile(
                        onTap: () {
                          favouriteProvider.removeItem(selectedItemIndex);
                        },
                        title: Text('item $selectedItemIndex'),
                        trailing: IconButton(
                          icon: const Icon(Icons.favorite, color: Colors.red),
                          onPressed: () {
                            favouriteProvider.removeItem(selectedItemIndex);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
