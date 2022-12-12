import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../models.dart';
import '../../data.dart';
import '../../nav.dart';
import '../../widgets.dart';

class CategoryItemsPage extends StatelessWidget {
  final Category item;

  const CategoryItemsPage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.only(left: 25),
            child: const Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Nav.filter(context),
            child: Container(
              padding: const EdgeInsets.only(right: 25),
              child: const Icon(Icons.sort, color: Colors.black),
            ),
          ),
        ],
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: const AppText(
            text: "Beverages",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        //staggeredTiles: beverages.map<StaggeredTile>((_) => StaggeredTile.fit(2)).toList(),
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 0.0,
        // I only need two card horizontally
        children: demoGroceryItemBeverages.asMap().entries.map<Widget>(
          (e) {
            Product groceryItem = e.value;
            return GestureDetector(
              onTap: () => Nav.productDetails(context, item: groceryItem, suffix: 'explore_screen'),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: GroceryItemCard(
                  item: groceryItem,
                  heroTagSuffix: "explore_screen",
                ),
              ),
            );
          },
        ).toList(), // add some space
      ),
    );
  }
}
