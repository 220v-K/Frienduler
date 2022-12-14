import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget defaultAppBar(BuildContext context, String titleText,
    Color backGroundColor, GlobalKey<ScaffoldState> drawerKey_) {
  return AppBar(
    backgroundColor: backGroundColor,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.zero,
      color: Colors.black,
      icon: const Icon(Icons.arrow_back_ios),
      tooltip: 'Before',
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        padding: EdgeInsets.zero,
        color: Colors.black,
        icon: const Icon(Icons.menu),
        tooltip: 'Menu',
        iconSize: 30,
        onPressed: () {
          // drawerKey_.currentState!.openEndDrawer();
          // Scaffold.of(context).openEndDrawer();
          // TODO : Add Menu Func.
        },
      ),
    ],
    centerTitle: false,
    title: Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: Text(
        titleText,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
      ),
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  );
}
