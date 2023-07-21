import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';

import '../../../core/resource/val_app.dart';

class ButtonCheck extends StatelessWidget {
  const ButtonCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ValApp.va10),
        child: Container(
          decoration: BoxDecoration(
              color: ColorApp.move,
              borderRadius: BorderRadius.circular(ValApp.va20)),
          width: 400,
          height: 50,
          child: const Center(
              child: Text(
            'check yore price in the book',
            style: TextStyle(
              color: ColorApp.container1,
            ),
          )),
        ),
      ),
    );
  }
}
