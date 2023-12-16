import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press; // 表示没有返回值的函数

  const CategoryItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? const TextStyle(
                      fontWeight: FontWeight.bold, color: kTextColor)
                  : const TextStyle(fontSize: 12),
            ),
            if (isActive) // 如果选中在显示下边框
              Container(
                height: 3,
                width: 22,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              )
          ],
        ),
      ),
    );
  }
}
