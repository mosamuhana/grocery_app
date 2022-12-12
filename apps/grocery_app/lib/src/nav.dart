import 'package:flutter/material.dart';

import 'models.dart';
import 'pages.dart';

class Nav {
  static void welcome(BuildContext context) => _show(context, const WelcomePage());

  static void dashboard(BuildContext context) => _show(context, const DashboardPage());

  static void filter(BuildContext context) => _show(context, const FilterPage());

  static void orderAccepted(BuildContext context) => _show(context, const OrderAcceptedPage());

  static void categoryItems(BuildContext context, {required Category item}) =>
      _show(context, CategoryItemsPage(item: item));

  static void productDetails(BuildContext context, {required Product item, String? suffix}) =>
      _show(context, ProductDetailsPage(item: item, heroTagSuffix: suffix));
}

Future<T?> _show<T extends Object?>(BuildContext context, Widget page, {T? result}) {
  return Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => page), result: result);
}
