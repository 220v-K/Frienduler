import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:frienduler/components/frame.dart';
import 'package:frienduler/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: main_color,
        fontFamily: 'GmarketSans',
      ),
      home: Scaffold(
        body: safeAreaPage(
          main_color,
          main_color,
          Container(
            color: Colors.white,
            child: const Center(
              child: Text('Hello World'),
            ),
          ),
        ),
      ),
    );
  }
}
