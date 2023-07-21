import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';
import '../../../core/resource/list_app.dart';
import '../../../core/resource/val_app.dart';

Widget getListViewHomeScreen() {
  return ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: names.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: ValApp.va25),
        margin: const EdgeInsets.symmetric(
            horizontal: ValApp.va15, vertical: ValApp.va10),
        decoration: BoxDecoration(
            color: ColorApp.container,
            borderRadius: BorderRadius.circular(ValApp.va20)),
        child: Text(
          names[index],
          style: const TextStyle(
              color: ColorApp.container1,
              fontSize: ValApp.va15,
              fontWeight: FontWeight.w500),
        ),
      );
    },
  );
}
