import 'package:flutter/material.dart';

import '../constants.dart';
import '../models.dart';
import '../widgets.dart';

class GroceryItemCard extends StatelessWidget {
  final Product item;
  final String? heroTagSuffix;

  const GroceryItemCard({
    super.key,
    required this.item,
    this.heroTagSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  tag: "GroceryItem:${item.name}-${heroTagSuffix ?? ""}",
                  child: Image.asset(item.image),
                ),
              ),
            ),
            const SizedBox(height: 20),
            AppText(
              text: item.name,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            AppText(
              text: '${item.description}',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: kDarkGrey,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                AppText(
                  text: "\$${item.price.toStringAsFixed(2)}",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kPrimaryColor,
                  ),
                  child: const Center(
                    child: Icon(Icons.add, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
