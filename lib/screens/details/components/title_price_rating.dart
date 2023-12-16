import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
  final price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    super.key,
    this.price,
    this.numOfReviews,
    required this.rating,
    required this.name,
    required this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20), // 垂直方向上的padding
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SmoothStarRating(
                    borderColor: kPrimaryColor,
                    rating: rating,
                    onRatingChanged: onRatingChanged,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('$numOfReviews Reviews')
                ],
              )
            ],
          )),
          priceTag(context, price: price)
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {required price}) {
    return ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 15),
        height: 66,
        width: 65,
        color: kPrimaryColor,
        child: Text(
          '\$ $price',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print(size); // Size(65.0, 66.0)
    Path path = Path();
    double ingnoreHeight = 20; // 忽略的高度, 用于控制圆角的大小
    path.lineTo(0, size.height - ingnoreHeight); // 起始点
    path.lineTo(size.width / 2, size.height); // 中间点
    path.lineTo(size.width, size.height - ingnoreHeight); // 右下角
    path.lineTo(size.width, 0); // 右上角
    path.close();
    return path;
  }

// shouldReclip方法是用来判断是否需要重新剪裁的，如果在应用中，剪裁的角度、大小、位置等属性不会发生变化时，应该返回false，这样就不会触发重新剪裁，避免不必要的性能开销。
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; // 表示需要重新绘制，false表示不需要重新绘制
  }
}
