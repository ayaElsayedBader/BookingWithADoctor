import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';

import '../../../core/resource/val_app.dart';

Widget getContainer(
    {required Color color,
    required IconData icon,
    required String text1,
    required String text2,
    required Color colorIcon}) {
  return Container(
    height: ValApp.va200,
    width: ValApp.va170,
    padding: const EdgeInsets.all(ValApp.va20),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(ValApp.va10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 4,
            blurRadius: 6,
          ),
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            padding: const EdgeInsets.all(ValApp.va8),
            decoration: BoxDecoration(color: colorIcon, shape: BoxShape.circle),
            child: Icon(
              icon,
              color: ColorApp.move,
              size: ValApp.va24,
            )),
        const SizedBox(
          height: ValApp.va18,
        ),
        Text(
          text1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: ValApp.va22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: ValApp.va5,
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Colors.white,
            fontSize: ValApp.va20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
