import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/svg.dart';

AppBar appbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {}),
    actions: [
      // 右侧按钮
      IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: () {})
    ],
    title: RichText(
      text: TextSpan(
        // TextSpan是一个文本片段，可以包含多个文本样式
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold), // 从主题中获取文本样式,并设置字体粗细,?表示可空
        children: const [
          TextSpan(
              text: "Punk",
              style: TextStyle(
                  color: kSecondaryColor)), // TextSpan是一个文本片段，可以包含多个文本样式
          TextSpan(
            text: "Food",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
  );
}
