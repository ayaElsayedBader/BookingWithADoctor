import 'package:flutter/material.dart';



import '../../../core/resource/color_app.dart';

import '../../../core/resource/list_app.dart';
import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';
import '../widgets/text.dart';
import 'chat_screen.dart';

class MassageScreen extends StatelessWidget {
  const MassageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(
            top: ValApp.va50, right: ValApp.va20, left: ValApp.va20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringApp.massage,
              style: TextStyle(
                  color: ColorApp.black2,
                  fontSize: ValApp.va33,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: ValApp.va15,
            ),
            Container(
              height: ValApp.va50,
              padding: const EdgeInsets.all(ValApp.va10),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: ValApp.va2,
                      spreadRadius: ValApp.va10,
                      color: Colors.black12,
                    )
                  ],
                  color: ColorApp.container1,
                  borderRadius: BorderRadius.circular(ValApp.va10)),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'search',
                  suffixIcon: Icon(
                    Icons.search_sharp,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: ValApp.va15,
            ),
            getText('Active Now'),
            SizedBox(
              height: ValApp.va150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    //  color: Colors.yellowAccent,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(ValApp.va3),
                    child: CircleAvatar(
                      radius: ValApp.va50,
                      backgroundImage: AssetImage(
                        images[index],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 15,
                              left: 77,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                height: ValApp.va8,
                                width: ValApp.va8,
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            getText('Recent chat'),
            SizedBox(
              height: 300,
              child: ListView.separated(
                itemCount: images.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ChatScreen()));
                      },
                      child: CircleAvatar(
                        radius: ValApp.va33,
                        backgroundImage: AssetImage(images[index]),
                      ),
                    ),
                    title: const Text(
                      StringApp.doctorsName,
                      style: TextStyle(fontSize: ValApp.va18),
                    ),
                    subtitle: const Text('hi doctor are you ok?'),
                    trailing: const Text('10:00'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: ValApp.va15,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
