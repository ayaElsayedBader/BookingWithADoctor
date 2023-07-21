import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/resource/app_image.dart';
import '../../../core/resource/string_app.dart';
import '../widgets/butten_widget.dart';
import '../widgets/row_widget.dart';


import '../../../core/resource/color_app.dart';
import '../../../core/resource/val_app.dart';
import '../widgets/textForm.dart';
import 'login_page.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: ValApp.va18,
              ),
              Image.asset(ImageApp.doctors),
              const SizedBox(
                height: ValApp.va18,
              ),
              textFormWidget(
                  icon: const Icon(Icons.person), text: StringApp.fullName),
              const SizedBox(
                height: ValApp.va10,
              ),
              textFormWidget(
                  icon: const Icon(Icons.phone), text: StringApp.phoneNumber),
              const SizedBox(
                height: ValApp.va10,
              ),
              textFormWidget(
                  icon: Icon(Icons.email), text: StringApp.emailAddress),
              const SizedBox(
                height: ValApp.va10,
              ),
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
                height: ValApp.va10,
              ),
              ButtenWidget(
                  name: StringApp.create,
                  onPressed: () {},
                  val: double.infinity),
              const SizedBox(
                height: ValApp.va10,
              ),
              getRow(StringApp.alreadyHaveAnAccount, StringApp.Login,
                  ColorApp.blue, ColorApp.black2, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginPage()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
