import 'package:flutter/material.dart';

import '../models.dart';
import '../widgets.dart';

class CategoryItemCard extends StatelessWidget {
  final Category item;
  final Color color;

  const CategoryItemCard({
    super.key,
    required this.item,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: color.withOpacity(0.7),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: Image.asset(item.image, fit: BoxFit.contain),
          ),
          SizedBox(
            height: 60,
            child: Center(
              child: AppText(
                text: item.name,
                textAlign: TextAlign.center,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
