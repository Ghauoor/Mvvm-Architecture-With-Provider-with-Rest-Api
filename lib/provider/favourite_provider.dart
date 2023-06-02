import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  final List<int> _selectedArr = [];
  List<int> get selectedArr => _selectedArr;

  void addItems(int index) {
    selectedArr.add(index);
    notifyListeners();
  }

  void removeItem(int index) {
    selectedArr.remove(index);
    notifyListeners();
  }
}
