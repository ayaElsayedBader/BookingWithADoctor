
import 'package:flutter/material.dart';



import '../../../core/resource/app_image.dart';
import '../widgets/list_title_seeting_screen.dart';


import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: ValApp.va20, right: ValApp.va20, top: ValApp.va50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            StringApp.setting,
            style: TextStyle(fontSize: ValApp.va33, color: ColorApp.black2),
          ),
          const SizedBox(
            height: ValApp.va40,
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: ValApp.va33,
              backgroundImage: AssetImage(
                ImageApp.doctor1,
              ),
            ),
            title: Text(
              StringApp.doctorsName,
              style: TextStyle(fontSize: ValApp.va22),
            ),
            subtitle: Text(StringApp.profile),
          ),
          const Divider(
            thickness: ValApp.va2,
            color: ColorApp.black2,
          ),
          SizedBox(height: ValApp.va350, child: listTitleSettingScreen()),
          const Divider(
            thickness: ValApp.va1,
            color: ColorApp.black2,
          ),
          const SizedBox(
            height: ValApp.va20,
          ),
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(ValApp.va10),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.tealAccent),
              child: const Icon(Icons.logout, color: ColorApp.black2),
            ),
            title: const Text(
              StringApp.logOut,
              style:
                  TextStyle(fontSize: ValApp.va20, fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: ValApp.va25,
              color: ColorApp.black2,
            ),
          ),
        ],
      ),
    );
  }
}
