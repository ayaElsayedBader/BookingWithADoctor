import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';

import '../../../core/resource/list_app.dart';
import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

class PersonalDoctorCard extends StatelessWidget {
  const PersonalDoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(ValApp.va10),
            decoration:
                const BoxDecoration(color: ColorApp.container1, boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: ValApp.va5,
                spreadRadius: ValApp.va4,
              ),
            ]),
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: ValApp.va5, top: ValApp.va5),
                          child: CircleAvatar(
                            radius: ValApp.va33,
                            backgroundImage: AssetImage(images[index]),
                          ),
                        ),
                        const Column(
                          children: [
                            Text(StringApp.doctorsName),
                            Text(
                              StringApp.oneYears,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(StringApp.num),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    const SizedBox(height: ValApp.va20),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        StringApp.we,
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                        maxLines: 2,
                        style: TextStyle(),
                      ),
                    )
                  ],
                )),
          );
        });
  }
}
