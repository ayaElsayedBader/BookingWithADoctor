import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';
import '../../../core/resource/list_app.dart';
import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';
import '../page/applomaint_screen.dart';
import 'package:flutter/material.dart';
Widget gridViewHomeScreen() {
  return GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ApplomaintScreen()));
          },
          child: Container(
              margin: const EdgeInsets.all(ValApp.va10),
              padding: const EdgeInsets.symmetric(vertical: ValApp.va5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(ValApp.va10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: ValApp.va4,
                      spreadRadius: ValApp.va2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: ValApp.va35,
                    backgroundImage: AssetImage(images[index]),
                  ),
                  const SizedBox(
                    height: ValApp.va5,
                  ),
                  const Text(
                    StringApp.doctorsNames,
                    style: TextStyle(
                      fontSize: ValApp.va20,
                      color: ColorApp.blueConf,
                    ),
                  ),
                  const Text(
                    StringApp.therapist,
                    style: TextStyle(
                      fontSize: ValApp.va18,
                      color: ColorApp.black2,
                    ),
                  ),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorApp.amber,
                      ),
                      Text(StringApp.num),
                    ],
                  )
                ],
              )),
        );
      });
}
