import 'package:flutter/material.dart';

import '../../../core/resource/app_image.dart';


import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';
import 'clipp_chat.dart';




class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Column( crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Padding(
          padding: const EdgeInsets.only(right: ValApp.va50),
          child: getClipChat(
              image: ImageApp.doctor1,
              name: StringApp.res,
              color: Colors.blue,
              val: ValApp.va80,
              isTRue: false, isFalse: false),
        ),  Padding(
              padding: const EdgeInsets.only(left: ValApp.va100),
              child: getClipChat(
              image: ImageApp.line,
              name: StringApp.sick,
              color: Colors.teal,
              val: ValApp.va70,
              isTRue: false, isFalse: true),
            ),

      ],
   );
  }
}
// اللهم صل علي محمد وعلي ال محمد كما صليت علي ابراهيم وعلي ال ابراهيم في العالمين انك حميد مجيد
