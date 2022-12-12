import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../constants.dart';
import '../../data.dart';
import '../../nav.dart';
import '../../widgets.dart';

class ContentExplorePage extends StatelessWidget {
  const ContentExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [...demoCategoryItems];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: const [
                SizedBox(height: 20),
                Center(
                  child: AppText(
                    text: "Find Products",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SearchBar(),
                ),
              ],
            ),
            Expanded(
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                //staggeredTiles: items.map<StaggeredTile>((_) => StaggeredTile.fit(2)).toList(),
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 4.0,
                children: [
                  for (var index = 0; index < items.length; index++)
                    GestureDetector(
                      onTap: () => Nav.categoryItems(context, item: items[index]),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: CategoryItemCard(
                          item: items[index],
                          color: kExploreGridColors[index % kExploreGridColors.length],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
