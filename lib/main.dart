import 'package:flutter/material.dart';
import 'package:frienduler/components/frame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: safeAreaPage(
          Colors.white,
          Colors.pink,
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
