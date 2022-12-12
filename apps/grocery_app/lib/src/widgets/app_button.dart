import 'package:flutter/material.dart';

import '../constants.dart';

class AppButton extends StatelessWidget {
  final String label;
  final double radius;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Widget? trailing;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.label,
    this.radius = 18,
    this.fontWeight = FontWeight.bold,
    this.padding = const EdgeInsets.symmetric(vertical: 24),
    this.trailing,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          elevation: 0.0,
          padding: padding,
        ),
        onPressed: onPressed,
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Center(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: fontWeight),
              ),
            ),
            if (trailing != null)
              Positioned(
                top: 0,
                right: 25,
                child: trailing!,
              )
          ],
        ),
      ),
    );
  }
}
