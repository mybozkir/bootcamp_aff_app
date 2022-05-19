
import 'package:bootcamp_aff_app/pages/affirmation_pages/money_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/affirmation_pages/success_aff_screen.dart';
import 'package:bootcamp_aff_app/pages/categories_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryScreen(),
    );
  }
}




