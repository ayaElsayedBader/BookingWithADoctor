import 'package:flutter/material.dart';




import '../../../core/resource/color_app.dart';


import '../../../core/resource/list_app.dart';
import '../../../core/resource/val_app.dart';


Widget listTitleSettingScreen() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(ValApp.va10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.orange),
            child: Icon(iconSetting[index], color: ColorApp.black2),
          ),
          title: Text(
            settingName[index],
            style:
                TextStyle(fontSize: ValApp.va20, fontWeight: FontWeight.w500),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: ValApp.va25,
            color: ColorApp.black2,
          ),
        ),
      );
    },
  );
}

List icon = [Icons.account_box, Icons.add_box_sharp];
