import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchBox({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: kSecondaryColor.withOpacity(0.32))),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: "search Here"),
      ),
    );
  }
}
