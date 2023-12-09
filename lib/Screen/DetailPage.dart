import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobprog_sesi_21/provider/provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Consumer<ProviderApp>(
        builder: (context, itemProvider, child) {
          // Mendapatkan item yang dipilih dari provider
          final selectedItem = itemProvider.items[itemProvider.selectedIndex];

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    selectedItem.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
