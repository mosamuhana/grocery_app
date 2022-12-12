import 'package:flutter/cupertino.dart';

import '../../constants.dart';
import '../../widgets.dart';

class ContentFavouritePage extends StatelessWidget {
  const ContentFavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText(
        text: "No Favorite Items",
        fontWeight: FontWeight.w600,
        color: kDarkGrey,
      ),
    );
  }
}
