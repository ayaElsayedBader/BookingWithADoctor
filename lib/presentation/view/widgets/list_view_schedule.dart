import 'package:flutter/material.dart';


import '../../../core/resource/color_app.dart';

import '../../../core/resource/list_app.dart';
import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

import 'card.dart';

Widget getListViewSchedule() {
  return SizedBox(
    height: 500,
    child: ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          height: ValApp.va200,
          width: ValApp.va350,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(ValApp.va10),
              boxShadow: const [
                BoxShadow(
                  color: ColorApp.white,
                  blurRadius: ValApp.va4,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.only(
                left: ValApp.va20, top: ValApp.va20, right: ValApp.va20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Column(
                      children: [
                        Text(
                          StringApp.doctorsName,
                          style: TextStyle(
                              color: ColorApp.container1,
                              fontWeight: FontWeight.bold,
                              fontSize: ValApp.va18),
                        ),
                        Text(StringApp.therapist,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                        radius: ValApp.va33,
                        backgroundImage: AssetImage(images[index]))
                  ],
                ),
                const Divider(
                  thickness: ValApp.va2,
                  color: ColorApp.black2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    cardContainer(icon: Icons.dataset_sharp, name: '9/7/2020'),
                    cardContainer(icon: Icons.access_time, name: '10:30'),
                    cardContainer(
                        icon: Icons.account_balance, name: 'conferded'),
                  ],
                ),
                const SizedBox(
                  height: ValApp.va30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorApp.white,
                            borderRadius: BorderRadius.circular(ValApp.va10)),
                        padding: EdgeInsets.all(ValApp.va10),
                        child: const Text(
                          StringApp.cancel,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ValApp.va20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(ValApp.va10),
                        //  color: Colors.white,
                        child: const Text(
                          StringApp.reschedule,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ValApp.va20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: ValApp.va4,
        );
      },
    ),
  );
}
