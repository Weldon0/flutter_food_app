import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgStr;

  const ItemImage({
    super.key,
    required this.size,
    required this.imgStr,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgStr,
      height: size.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill, // 图片填充, BoxFit.fill表示填充满整个容器
    );
  }
}
