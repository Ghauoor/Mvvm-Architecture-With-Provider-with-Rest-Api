import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/provider/favourite_provider.dart';
import 'package:provider_mvvm/screen/favourite/favourite_item_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedArray = [];

  @override
  Widget build(BuildContext context) {
    // final favouriteProvider = Provider.of<FavouriteProvider>(context);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite example with Provider'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouriteitemScreen(),
                ),
              );
            },
            icon: const Icon(Icons.favorite_border_sharp),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Consumer<FavouriteProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (!value.selectedArr.contains(index)) {
                        value.addItems(index);
                      } else {
                        value.removeItem(index);
                      }

                      // setState(() {
                      //   if (selectedArray.contains(index)) {
                      //     selectedArray.remove(index);
                      //   } else {
                      //     selectedArray.add(index);
                      //   }
                      // });
                    },
                    title: Text('item ${index.toString()}'),
                    trailing: Icon(
                      Icons.favorite,
                      color: value.selectedArr.contains(index)
                          ? Colors.red
                          : Colors.grey,
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
