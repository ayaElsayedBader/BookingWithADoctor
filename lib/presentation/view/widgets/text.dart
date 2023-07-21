import 'package:flutter/material.dart';

import '../../../core/resource/val_app.dart';

Widget getText(String name) {
  return Text(
    name,
    style: const TextStyle(
        color: Colors.indigo,
        fontWeight: FontWeight.bold,
        fontSize: ValApp.va22),
  );
}
