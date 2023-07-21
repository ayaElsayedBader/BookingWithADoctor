import 'package:flutter/material.dart';

import '../../../core/resource/val_app.dart';

import '../widgets/list_view_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  var isTrue = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(
            top: ValApp.va50, left: ValApp.va20, right: ValApp.va20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(' schedule',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: ValApp.va22,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: ValApp.va15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ValApp.va15),
                color: Colors.blue,
              ),
              child: const Text(
                'about doctor',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: ValApp.va33,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: ValApp.va15,
            ),
            getListViewSchedule()
          ],
        ),
      ),
    );
  }
}
