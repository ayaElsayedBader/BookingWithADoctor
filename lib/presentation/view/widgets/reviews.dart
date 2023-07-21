import 'package:flutter/material.dart';

import '../../../core/resource/color_app.dart';

import '../../../core/resource/string_app.dart';
import '../../../core/resource/val_app.dart';


class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(StringApp.reviews,
            style: TextStyle(
              color: ColorApp.black2,
              fontSize: ValApp.va18,
            )),
        const SizedBox(
          width: ValApp.va5,
        ),
        const Icon(
          Icons.star,
          color: ColorApp.amber,
        ),
        const Text(StringApp.num),
        const Text(
          StringApp.response,
          style: TextStyle(color: ColorApp.amber),
        ),
        const Spacer(),
        TextButton(onPressed: () {}, child: const Text(StringApp.seeMore))
      ],
    );
  }
}
