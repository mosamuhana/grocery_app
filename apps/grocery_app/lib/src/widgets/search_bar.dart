import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: kSearchBarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.svg_search),
          const SizedBox(width: 8),
          const Text(
            "Search Store",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kDarkGrey),
          ),
        ],
      ),
    );
  }
}
