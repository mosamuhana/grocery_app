import 'package:flutter/material.dart';

import '../assets.dart';
import '../constants.dart';
import '../nav.dart';
import '../widgets.dart';

class OrderFailedDialog extends StatelessWidget {
  const OrderFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        height: 600.0,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
              ),
              child: Image(image: AssetImage(Assets.image_order_failed)),
            ),
            const Spacer(
              flex: 5,
            ),
            const AppText(
              text: "Oops! Order Failed",
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
            const Spacer(
              flex: 2,
            ),
            const AppText(
              text: "Something went temply wrong",
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: kDarkGrey,
            ),
            const Spacer(
              flex: 8,
            ),
            AppButton(
              label: "Please Try Again",
              fontWeight: FontWeight.w600,
              onPressed: () => Nav.orderAccepted(context),
            ),
            const Spacer(
              flex: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const AppText(
                text: "Back To Home",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
