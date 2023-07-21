import 'package:flutter/material.dart';

import '../../../core/resource/val_app.dart';

Widget getRow(String name, String name2, Color color, Color color2,
    Function()? onPressed) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: ValApp.va10),
        child: Text(name,
            style: TextStyle(
                color: color2,
                fontWeight: FontWeight.bold,
                fontSize: ValApp.va18)),
      ),
      InkWell(
        onTap: onPressed,
        child: Text(name2,
            style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: ValApp.va18)),
      ),
    ],
  );
}
