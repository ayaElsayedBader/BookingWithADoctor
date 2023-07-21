import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


import '../../../core/resource/val_app.dart';


Widget getClipChat(
    {required String image,
    required String name,
      required bool isFalse,
    required Color color,
    required double val,
    required bool isTRue}) {
  return ClipPath(
    clipper: WaveClipperOne(flip: isFalse, reverse: isTRue),
    child: Padding(
      padding: const EdgeInsets.only(right: ValApp.va10),
      child: Container(
        height: val,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(top: ValApp.va10,bottom: ValApp.va10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: ValApp.va18,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(
                width: ValApp.va3,
              ),
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontSize: ValApp.va15),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
