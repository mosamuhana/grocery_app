import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../assets.dart';
import '../../constants.dart';
import '../../nav.dart';
import '../../widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.image_welcome),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(),
              SvgPicture.asset(Assets.svg_logo, width: 48, height: 56),
              const SizedBox(height: 20),
              Column(
                children: const [
                  AppText(
                    text: "Welcome",
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  AppText(
                    text: "to our store",
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              AppText(
                text: "Get your grecories as fast as in hour",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFCFCFC).withOpacity(0.7),
              ),
              const SizedBox(height: 40),
              AppButton(
                label: "Get Started",
                fontWeight: FontWeight.w600,
                padding: const EdgeInsets.symmetric(vertical: 25),
                onPressed: () => Nav.dashboard(context),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
