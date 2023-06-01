import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  final List<int> _selectedArr = [];
  List<int> get selectedArr => _selectedArr;

  void addAndRemoveItems(int index) {
    if (selectedArr.contains(index)) {
      selectedArr.remove(index);
    } else {
      selectedArr.add(index);
    }
    notifyListeners();
  }
}
