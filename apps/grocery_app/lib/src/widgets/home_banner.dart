import 'package:flutter/material.dart';

import '../widgets.dart';
import '../constants.dart';
import '../assets.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
            image: AssetImage(Assets.image_banner_background), fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image.asset(Assets.image_banner),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppText(
                text: "Fresh Vegetables",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "Get Up To 40%  OFF",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
