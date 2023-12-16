import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // 水平滚动
      child: Row(
        children: [
          CategoryItem(
            title: 'comobo Meal',
            isActive: false,
            press: () => {},
          ),
          CategoryItem(
            title: 'comobo Meal',
            isActive: true,
            press: () => {},
          ),
          CategoryItem(
            title: 'comobo Meal',
            isActive: false,
            press: () => {},
          ),
          CategoryItem(
            title: 'comobo Meal',
            isActive: false,
            press: () => {},
          ),
          CategoryItem(
            title: 'comobo Meal',
            isActive: false,
            press: () => {},
          )
        ],
      ),
    );
  }
}
