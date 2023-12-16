import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/details/detail_screen.dart';
import 'package:flutter_application_2/screens/home/components/body_card.dart';

class CardItemList extends StatelessWidget {
  const CardItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BodyCard(
            title: "Vegan salad bowl",
            shopName: "MacDonald's",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
            },
          ),
          BodyCard(
            title: "Chinese & noddles bowl",
            shopName: "Wendys",
            svgSrc: "assets/icons/chinese_noodles.svg",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
            },
          ),
          BodyCard(
            title: "",
            shopName: "MacDonald's",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
            },
          ),
          BodyCard(
            title: "Vegan salad bowl",
            shopName: "MacDonald's",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
            },
          )
        ],
      ),
    );
  }
}
