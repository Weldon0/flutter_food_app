import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/components/DisCount.dart';
import 'package:flutter_application_2/screens/home/components/cagetory_list.dart';
import 'package:flutter_application_2/screens/home/components/card_list.dart';
import 'package:flutter_application_2/screens/home/components/serch_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChanged: (value) {
            if (kDebugMode) {
              print(value);
            }
          },
        ),
        const CategoryList(),
        // 卡片列表
        const CardItemList(),
        // 优惠卡片
        const DisCountCard(),
      ],
    );
  }
}
