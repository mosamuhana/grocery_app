import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets.dart';
import '../../constants.dart';
import '../../widgets.dart';

class ContentAccountPage extends StatelessWidget {
  const ContentAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ListTile(
              leading: SizedBox(
                width: 65,
                height: 65,
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundImage: const AssetImage(Assets.image_account),
                  backgroundColor: kPrimaryColor.withOpacity(0.7),
                ),
              ),
              title: const AppText(
                text: "Mohammed Hashim",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              subtitle: const AppText(
                text: "github.com/mohammedhashim44",
                color: kDarkGrey,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            const SeparatedListView(
              seperator: Divider(thickness: 1),
              children: _widgets,
            ),
            const SizedBox(height: 20),
            const LogoutButton(),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final String label;
  final String icon;

  const _ItemWidget({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(icon),
          ),
          const SizedBox(width: 20),
          Text(
            label,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

const List<Widget> _widgets = [
  _ItemWidget(label: "Orders", icon: Assets.svg_orders),
  _ItemWidget(label: "My Details", icon: Assets.svg_details),
  _ItemWidget(label: "Delivery Access", icon: Assets.svg_delivery),
  _ItemWidget(label: "Payment Methods", icon: Assets.svg_payment),
  _ItemWidget(label: "Promo Card", icon: Assets.svg_promo),
  _ItemWidget(label: "Notifications", icon: Assets.svg_notification),
  _ItemWidget(label: "Help", icon: Assets.svg_help),
  _ItemWidget(label: "About", icon: Assets.svg_about),
];
