import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/order_button.dart';
import 'package:flutter_application_2/screens/details/components/title_price_rating.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const ShopName(
          name: "MacDonalds",
        ),
        TitlePriceRating(
          name: "chinese Burger",
          numOfReviews: 24,
          rating: 4,
          price: 15,
          onRatingChanged: (value) {
            if (kDebugMode) {
              print(value);
            }
          },
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget augue quam. Aenean sollicitudin ex mauris, lobortis lobortis diam euismod sit amet. Proin vitae facilisis nibh. Ut vitae finibus nisl. Sed vitae dignissim est, in porta metus. Fusce et suscipit est. Duis et enim nec nisl tincidunt dapibus. Sed vitae cursus odio. Sed condimentum hendrerit dui, vitae fringilla velit vehicula vel. Donec ac nunc sodales, cursus ex vitae, lobortis nulla. Sed vitae arcu in risus pulvinar aliquam. Nulla aliquam justo sed diam consectetur, non porta nunc blandit. Integer justo arcu, tempor eu venenatis non, sagittis nec lacus. Duis suscipit, augue eget varius ultricies, ipsum odio rhoncus nunc, nec pharetra est tellus quis ligula. Nulla facilisi. Etiam ut feugiat ex.",
          style: TextStyle(height: 1.5),
        ),
        SizedBox(
          height: size.height * 0.05,
        ), // 表示高度的百分比
        OrderButton(
          size: size,
          press: () => {},
        )
      ]),
    );
  }
}

class ShopName extends StatelessWidget {
  final String name;
  const ShopName({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name),
      ],
    );
  }
}
