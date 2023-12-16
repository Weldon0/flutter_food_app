import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/details/components/item_image.dart';
import 'package:flutter_application_2/screens/details/components/item_info.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ItemImage(size: size, imgStr: "assets/images/burger.png"),
        const Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}
