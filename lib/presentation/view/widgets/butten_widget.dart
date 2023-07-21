import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';

import '../../../core/resource/val_app.dart';

Widget ButtenWidget(
    {required String? name,
    required Function()? onPressed,
    required double val}) {
  return MaterialButton(
    onPressed: onPressed,
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorApp.blue,
        borderRadius: BorderRadius.circular(ValApp.va7),
      ),
      height: ValApp.va60,
      width: val,
      child: Text(
        name!,
        style: const TextStyle(color: ColorApp.black2, fontSize: ValApp.va18),
      ),
    ),
  );
}
