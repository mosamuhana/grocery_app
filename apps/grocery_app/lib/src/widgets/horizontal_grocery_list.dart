import 'package:flutter/material.dart';

import '../models.dart';
import '../nav.dart';
import 'grocery_item_card.dart';

class HorizontalGroceryList extends StatelessWidget {
  final List<Product> items;

  const HorizontalGroceryList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Nav.productDetails(context, item: items[index], suffix: 'home_screen'),
            child: GroceryItemCard(
              item: items[index],
              heroTagSuffix: "home_screen",
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 20),
      ),
    );
  }
}
