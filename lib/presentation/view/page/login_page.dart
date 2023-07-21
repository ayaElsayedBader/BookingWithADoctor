import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/resource/app_image.dart';
import '../widgets/butten_widget.dart';
import '../widgets/row_widget.dart';
import '../widgets/textForm.dart';
import 'create_page.dart';


import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(ValApp.va5)),
              Image.asset(ImageApp.doctors),
              const SizedBox(
                height: ValApp.va45,
              ),
              textFormWidget(
                  icon: const Icon(
                    Icons.person,
                  ),
                  text: StringApp.user),
              const SizedBox(height: ValApp.va10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: ValApp.va10),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            if (isTrue == false) {
                              isTrue = true;
                            } else {
                              isTrue = false;
                            }
                            setState(() {});
                          },
                          child: isTrue
                              ? const Icon(CupertinoIcons.eye_slash_fill)
                              : const Icon(CupertinoIcons.eye_fill)),
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      label: const Text(StringApp.user),
                      enabledBorder: const OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: ValApp.va7,
              ),
              ButtenWidget(
                name: StringApp.Login,
                onPressed: () {},
                val: double.infinity,
              ),
              const SizedBox(
                height: ValApp.va30,
              ),
           getRow( StringApp.dont, StringApp.create , ColorApp.blue ,ColorApp.black2,() {
             Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const CreatePage()));

           } ),
            ],
          ),
        ),
      ),
    );
  }
}
