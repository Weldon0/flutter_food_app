import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBavBar extends StatelessWidget {
  const BottomBavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 33,
            color: const Color(0xff6daed9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            icon: SvgPicture.asset('assets/icons/home.svg'), onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('assets/icons/Following.svg'),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('assets/icons/Glyph.svg'), onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('assets/icons/person.svg'),
            onPressed: () {}),
      ]),
    );
  }
}
