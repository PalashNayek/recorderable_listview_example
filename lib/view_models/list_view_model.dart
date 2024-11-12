// list_view_model.dart
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ListViewModel extends ChangeNotifier {
  List<ItemModel> _items = [
    ItemModel(id: '1', title: 'Item 1'),
    ItemModel(id: '2', title: 'Item 2'),
    ItemModel(id: '3', title: 'Item 3'),
    ItemModel(id: '4', title: 'Item 4'),
    ItemModel(id: '5', title: 'Item 5'),
    ItemModel(id: '6', title: 'Item 6'),
    ItemModel(id: '7', title: 'Item 7'),
    ItemModel(id: '8', title: 'Item 8'),
    ItemModel(id: '9', title: 'Item 9'),
    ItemModel(id: '10', title: 'Item 10'),
    ItemModel(id: '11', title: 'Item 11'),
    ItemModel(id: '12', title: 'Item 12'),
  ];

  List<ItemModel> get items => _items;

  void reorderItems(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
    notifyListeners();
  }
}
