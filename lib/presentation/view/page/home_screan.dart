import 'package:flutter/material.dart';


import '../../../core/resource/app_image.dart';
import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

import '../home_screan_widget/grid_view_home_screan.dart';
import '../home_screan_widget/list_view_home_screen.dart';
import '../widgets/get_container.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
          vertical: ValApp.va50, horizontal: ValApp.va5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringApp.hello,
                style: TextStyle(
                    color: ColorApp.black2,
                    fontWeight: FontWeight.bold,
                    fontSize: ValApp.va25),
              ),
              CircleAvatar(
                radius: ValApp.va25,
                backgroundImage: AssetImage(ImageApp.doctor1),
              )
            ],
          ),
          const SizedBox(height: ValApp.va30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getContainer(
                  color: ColorApp.move,
                  icon: Icons.add,
                  text1: StringApp.clinic,
                  colorIcon: Colors.white,
                  text2: StringApp.visit),
              getContainer(
                  color: Colors.purpleAccent,
                  icon: Icons.home,
                  text1: StringApp.homeVisit,
                  colorIcon: Colors.white,
                  text2: StringApp.callDoctor),
            ],
          ),
          const SizedBox(
            height: ValApp.va18,
          ),
          const Text(
            StringApp.what,
            style: TextStyle(
                fontSize: ValApp.va18,
                color: ColorApp.move,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 70,
            child: getListViewHomeScreen(),
          ),
          const Text(
            StringApp.famous,
            style: TextStyle(
                color: ColorApp.blueConf,
                fontSize: ValApp.va30,
                fontWeight: FontWeight.w500),
          ),
          gridViewHomeScreen()
        ],
      ),
    );
  }
}
// aya flutter
