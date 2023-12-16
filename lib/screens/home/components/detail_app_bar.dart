import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar detailAppbar(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back)),
    actions: [
      IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/share.svg")),
      IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/more.svg")),
    ],
  );
}
