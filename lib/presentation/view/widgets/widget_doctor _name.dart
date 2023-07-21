import 'package:flutter/material.dart';

import '../../../core/resource/app_image.dart';
import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

class DoctorName extends StatelessWidget {
  const DoctorName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: ColorApp.hotPink,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
      width: double.infinity,
      height: ValApp.va250,
      child: Stack(children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: ColorApp.container1,
            )),
        const Positioned(
            right: ValApp.va5,
            child: Icon(Icons.arrow_back, color: ColorApp.container1)),
        Positioned(
          right: 80,
          top: 20,
          child: Column(
            children: [
              const CircleAvatar(
                radius: 33,
                backgroundImage: AssetImage(ImageApp.doctor1),
              ),
              const Text(
                StringApp.dr,
                style: TextStyle(color: ColorApp.container1, fontSize: 30),
              ),
              const Text(
                StringApp.therapist,
                style: TextStyle(color: ColorApp.black2, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 4,
                            )
                          ]),
                      child: const Icon(
                        Icons.phone,
                        size: 35,
                        color: ColorApp.hotPink,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: ValApp.va3,
                              blurRadius: ValApp.va4,
                            )
                          ]),
                      child: const Icon(
                        Icons.chat,
                        size: ValApp.va35,
                        color: ColorApp.hotPink,
                      )),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
