import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';
import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

import '../widgets/button_check.dart';
import '../widgets/personal_doctor_card.dart';
import '../widgets/reviews.dart';
import '../widgets/widget_doctor _name.dart';

class ApplomaintScreen extends StatelessWidget {
  const ApplomaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.container1,
      body: SafeArea(
        child: SingleChildScrollView(
          //   padding: EdgeInsets.all(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoctorName(), // widget doctor name
              Container(
                padding: const EdgeInsets.all(ValApp.va10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringApp.about,
                      style: TextStyle(
                        color: ColorApp.rose,
                        fontSize: ValApp.va20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(StringApp.we),
                    SizedBox(
                      height: ValApp.va18,
                    ),
                    Reviews(), // reviews   widget
                  ],
                ),
              ),
              const SizedBox(
                height: ValApp.va200,
                child: PersonalDoctorCard(), // list Personal doctor card
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: ValApp.va10, top: ValApp.va10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringApp.location,
                      style: TextStyle(
                          fontSize: ValApp.va20,
                          fontWeight: FontWeight.bold,
                          color: ColorApp.move),
                    ),
                    SizedBox(
                      height: ValApp.va10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: ValApp.va10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ColorApp.blue,
                            size: ValApp.va35,
                          ),
                          Column(
                            children: [
                              Text(
                                StringApp.newyork,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorApp.black2,
                                    fontSize: ValApp.va20),
                              ),
                              Text(
                                StringApp.line,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: ValApp.va20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ), // widget location
              const Divider(
                thickness: 1,
                color: ColorApp.black2,
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(StringApp.consluation),
                  Spacer(),
                  Text(StringApp.price)
                ],
              ),
              const SizedBox(height: 15),
              const ButtonCheck() // button check
            ],
          ),
        ),
      ),
    );
  }
}
