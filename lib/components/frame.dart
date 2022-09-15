import 'package:flutter/material.dart';
import 'package:frienduler/components/appBar.dart';
import 'package:frienduler/constants/colors.dart';

Widget matchingFrame(
  BuildContext context,
  EdgeInsetsGeometry margin_,
  String title_,
  Widget child_,
  GlobalKey<ScaffoldState> drawerKey_,
) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;

  return Container(
    color: main_color,
    child: SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(context, title_, lightgray, drawerKey_),
        body: Container(
          color: lightgray,
          child: Center(
            child: SizedBox(
              height: height,
              width: width,
              child: Container(
                margin: margin_,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: child_,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

/// [backgroundColor] is Color of outside of SafeArea.
///
/// [safeAreaColor] is Color of SafeArea ( Inside ).
///
/// [widget] is body of View. (Usually, Container/Row/Column..etc).
/// Use This as infrastructure of Page when Build New Page.
Widget safeAreaPage(Color backgroundColor, Color safeAreaColor, Widget widget) {
  return Container(
    color: backgroundColor,
    child: SafeArea(
      child: Container(
        color: safeAreaColor,
        child: widget,
      ),
    ),
  );
}
