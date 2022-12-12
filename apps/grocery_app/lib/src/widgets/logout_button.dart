import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import '../constants.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const LogoutButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          backgroundColor: const Color(0xffF2F3F2),
          foregroundColor: Colors.white,
          elevation: 0.0,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(Assets.svg_logout),
            ),
            const Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
