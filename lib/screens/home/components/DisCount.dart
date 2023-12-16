import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/svg.dart';

class DisCountCard extends StatelessWidget {
  const DisCountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Offers & Discounts2",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                  // DecorationImage是一个widget，它可以实现背景图片的功能
                  fit: BoxFit.fill, // fit表示图片的填充方式,这里是填充满整个容器
                  image: AssetImage(
                      "assets/images/beyond-meat-mcdonalds.png")), // AssetImage是一个widget，它可以实现图片的功能
            ),
            child: DecoratedBox(
              // DecoratedBox是一个widget，它可以实现装饰容器的功能
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    const Color(0xFFFF961F).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7)
                  ])),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Expanded(
                      child: SvgPicture.asset("assets/icons/macdonalds.svg")),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        // textSpan是一个widget，它可以实现富文本的功能,这里是实现了多种字体样式,类似于html中的span标签
                        // 还可以使用替换的组件是：Text.rich
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Get Discount of \n",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextSpan(
                            text: "30% \n",
                            style: TextStyle(
                                fontSize: 43, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "at MacDonald's on your first order & Instant cashback",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
