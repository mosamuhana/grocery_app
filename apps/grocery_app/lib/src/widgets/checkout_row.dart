import 'package:flutter/material.dart';

import 'app_text.dart';
import '../constants.dart';

class CheckoutRow extends StatelessWidget {
  final String label;
  final String? trailingText;
  final Widget? trailing;

  const CheckoutRow({
    super.key,
    required this.label,
    this.trailingText,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          AppText(
            text: label,
            fontSize: 18,
            color: kDarkGrey,
            fontWeight: FontWeight.w600,
          ),
          const Spacer(),
          trailingText == null
              ? trailing!
              : AppText(
                  text: trailingText!,
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          const SizedBox(width: 20),
          const Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    );
  }
}
