import 'package:flutter/material.dart';

import 'app_text.dart';

class ProductDataRow extends StatelessWidget {
  final String label;
  final Widget? child;
  final VoidCallback? onPressed;

  const ProductDataRow({
    super.key,
    required this.label,
    this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          AppText(text: label, fontWeight: FontWeight.w600, fontSize: 16),
          const Spacer(),
          if (child != null) ...[
            child!,
            const SizedBox(width: 20),
          ],
          InkWell(
            onTap: onPressed,
            child: const Icon(Icons.arrow_forward_ios, size: 20),
          ),
        ],
      ),
    );
  }
}
