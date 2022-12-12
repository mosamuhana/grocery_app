import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../assets.dart';
import '../../constants.dart';
import '../../data.dart';
import '../../widgets.dart';

class ContentHomePage extends StatelessWidget {
  const ContentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 15),
                SvgPicture.asset(Assets.svg_logo_colored),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.svg_location),
                      const SizedBox(width: 8),
                      const Text(
                        "Khartoum,Sudan",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: SearchBar(),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: HomeBanner(),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: _SubTitle(text: "Exclusive Order"),
                ),
                HorizontalGroceryList(items: exclusiveOffers),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: _SubTitle(text: 'Best Selling'),
                ),
                HorizontalGroceryList(items: bestSelling),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: _SubTitle(text: 'Groceries'),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 105,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(width: 20),
                      _GroceryFeaturedCard(
                        name: 'Pulses',
                        image: Assets.image_pulses,
                        color: Color(0xffF8A44C),
                      ),
                      SizedBox(width: 20),
                      _GroceryFeaturedCard(
                        name: 'Rise',
                        image: Assets.image_rise,
                        color: kPrimaryColor,
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                HorizontalGroceryList(items: groceries),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String text;

  const _SubTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Text(
          "See All",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}

class _GroceryFeaturedCard extends StatelessWidget {
  final String name;
  final String image;
  final Color color;

  const _GroceryFeaturedCard({
    required this.name,
    required this.image,
    this.color = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 105,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 17),
      decoration: BoxDecoration(
        color: color.withOpacity(0.25),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(width: 15),
          AppText(
            text: name,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
