



import '../../../core/resource/app_image.dart';
import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

import 'package:flutter/material.dart';

Widget appBarWidgetChatScreen (){

  return        Container(
    padding: const EdgeInsets.only(top: ValApp.va40, left: ValApp.va10,bottom: ValApp.va5),
    color: ColorApp.move,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back , color: ColorApp.container1,size: ValApp.va25,),
        CircleAvatar(
          backgroundImage: AssetImage(ImageApp.doctor1),
        ),
        Text(
          StringApp.doctorsName,
          style: TextStyle(color: Colors.white, fontSize:ValApp.va20),
        ),
        Icon(
          Icons.call,
          color: ColorApp.container1,
        ),
        Icon(Icons.video_call_sharp, color: ColorApp.container1),
        Icon(Icons.more_vert, color: ColorApp.container1),
      ],
    ),
  );
}