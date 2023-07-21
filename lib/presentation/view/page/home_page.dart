import 'package:flutter/material.dart';

import '../../../core/resource/app_image.dart';
import '../../../core/resource/color_app.dart';
import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';
import '../widgets/butten_widget.dart';
import '../widgets/navge_widget.dart';
import 'login_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.white,
      appBar: AppBar(
          backgroundColor: ColorApp.white,
          elevation: ValApp.va0,
          title: Padding(
            padding: const EdgeInsets.all(ValApp.va10),
            child: Row(
              children: [
                Container(),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const NavWidget()));
                  },
                  child: const Text(
                    StringApp.skip,
                    style:
                        TextStyle(color: ColorApp.blue, fontSize: ValApp.va30),
                  ),
                )
              ],
            ),
          )),
      body: Column(
        //mainAxisAlignment:  MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: ValApp.va30,
          ),
          Image.asset(ImageApp.doctors),
          const SizedBox(
            height: ValApp.va30,
          ),
          const Text(
            StringApp.doctorsAppointment,
            style: TextStyle(
              fontSize: ValApp.va30,
              color: ColorApp.blue,
            ),
          ),
          const Text(
            StringApp.doctorsAppointment,
            style: TextStyle(fontSize: ValApp.va18, color: Colors.teal),
          ),
          const SizedBox(
            height: ValApp.va45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtenWidget(
                  name: StringApp.Login,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LoginPage()));
                  },
                  val: ValApp.va130),
              ButtenWidget(
                  name: StringApp.signUp, onPressed: () {}, val: ValApp.va130),
            ],
          ),
        ],
      ),
    );
  }
}
