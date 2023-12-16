import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_svg/svg.dart';

class OrderButton extends StatelessWidget {
  final VoidCallback press;
  const OrderButton({
    super.key,
    required this.size,
    required this.press,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
      width: size.width * 0.8,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset("assets/icons/bag.svg"),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Buy Now",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
