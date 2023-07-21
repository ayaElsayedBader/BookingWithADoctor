import 'package:flutter/material.dart';

import '../../../core/resource/val_app.dart';

Widget textFormWidget({required Widget? icon, required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: ValApp.va10),
    child: TextFormField(
      decoration: InputDecoration(
          prefixIcon: icon,
          label: Text(text),
          enabledBorder: const OutlineInputBorder()),
    ),
  );
}
