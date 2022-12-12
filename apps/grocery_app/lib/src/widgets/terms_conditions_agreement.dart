import 'package:flutter/material.dart';

import '../constants.dart';

class TermsConditionsAgreement extends StatelessWidget {
  const TermsConditionsAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By placing an order you agree to our',
        style: TextStyle(
          color: kDarkGrey,
          fontSize: 14,
          fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
          fontWeight: FontWeight.w600,
        ),
        children: const [
          TextSpan(
            text: " Terms",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(text: " And"),
          TextSpan(
            text: " Conditions",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
