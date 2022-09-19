import 'package:flutter/material.dart';
import 'package:frienduler/components/frame.dart';
import 'package:frienduler/constants/colors.dart';
import 'package:frienduler/main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: safeAreaPage(
        main_color,
        Colors.white,
        Container(),
      ),
    );
  }
}
