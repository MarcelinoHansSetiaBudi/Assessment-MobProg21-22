import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobprog_sesi_21/Screen/HomePage.dart';
import 'package:mobprog_sesi_21/Screen/DetailPage.dart';
import 'package:mobprog_sesi_21/provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderApp(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/detail': (context) => DetailPage(),
        },
      ),
    );
  }
}
