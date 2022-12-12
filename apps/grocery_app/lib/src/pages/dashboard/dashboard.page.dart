import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets.dart';
import '../../constants.dart';
import '../../pages.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<StatefulWidget> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 37,
              offset: const Offset(0, -12),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kPrimaryColor,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                label: 'Shop',
                icon: SvgPicture.asset(Assets.svg_shop, color: getIconColor(0)),
              ),
              BottomNavigationBarItem(
                label: 'Explore',
                icon: SvgPicture.asset(Assets.svg_explore, color: getIconColor(1)),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: SvgPicture.asset(Assets.svg_cart, color: getIconColor(2)),
              ),
              BottomNavigationBarItem(
                label: 'Favourite',
                icon: SvgPicture.asset(Assets.svg_favourite, color: getIconColor(3)),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: SvgPicture.asset(Assets.svg_account, color: getIconColor(4)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getIconColor(int index) => index == currentIndex ? kPrimaryColor : Colors.black;

  Widget get currentPage {
    switch (currentIndex) {
      case 1:
        return const ContentExplorePage();
      case 2:
        return const ContentCartPage();
      case 3:
        return const ContentFavouritePage();
      case 4:
        return const ContentAccountPage();
      case 0:
      default:
        return const ContentHomePage();
    }
  }
}
