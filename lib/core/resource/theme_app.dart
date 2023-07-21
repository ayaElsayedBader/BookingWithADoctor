import 'package:doctor_app/core/resource/val_app.dart';
import 'package:flutter/material.dart';

import 'color_app.dart';

ThemeData getTheme({Color? color, double? size, FontWeight? fontWeight}) {
  return ThemeData(
      textTheme: const TextTheme(
          headline1: TextStyle(
              color: ColorApp.blue,
              fontSize: ValApp.va18,
              fontWeight: FontWeight.bold)));
}
