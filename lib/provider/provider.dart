import 'package:flutter/material.dart';
import 'package:mobprog_sesi_21/Item/items.dart';

class ProviderApp with ChangeNotifier {
  List<Item> items = [
    Item("Aby"),
    Item("Aish"),
    Item("Ayan"),
    Item("Ben"),
    Item("Bob"),
    Item("Charlie"),
    Item("Cook")
    // Tambahkan item sesuai kebutuhan
  ];

  int _count = 0;
  int get count => _count;

  void Increment() {
    _count++;
    notifyListeners();
  }

  int _selectedIndex = -1;

  int get selectedIndex => _selectedIndex;

  void selectItem(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
