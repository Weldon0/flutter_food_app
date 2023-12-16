import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/svg.dart';

class BodyCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final VoidCallback press;

  const BodyCard({
    super.key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // 表示获取屏幕的宽高
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20,
                color: const Color(0xFFB0CCE1).withOpacity(0.32))
          ]),
      child: Material(
        color: Colors.transparent,

        // Material是一个widget，它实现了Material Design 指南的视觉、效果、motion-rich的widget
        child: InkWell(
          // InkWell是一个widget，它可以实现点击事件，它和GestureDetector的区别是，它有水波纹效果
          // 外层的Material是为了实现水波纹效果，内层的InkWell是为了实现点击事件
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13), // 背景色
                    shape: BoxShape.circle), // shape表示形状，这里是圆形
                child: SvgPicture.asset(
                  svgSrc,
                  width: size.width * 0.18,
                ),
              ),
              Text(title),
              const SizedBox(
                height: 10,
              ),
              Text(
                shopName,
                style: const TextStyle(fontSize: 12),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
