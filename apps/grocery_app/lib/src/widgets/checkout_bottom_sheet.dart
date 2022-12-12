import 'package:flutter/material.dart';

import '../widgets.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Wrap(
        children: [
          Row(
            children: [
              const AppText(
                text: "Checkout",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 25),
              ),
            ],
          ),
          const SizedBox(height: 45),
          _divider,
          const CheckoutRow(label: "Delivery", trailingText: "Select Method"),
          _divider,
          const CheckoutRow(label: "Payment", trailing: Icon(Icons.payment)),
          _divider,
          const CheckoutRow(label: "Promo Code", trailingText: "Pick Discount"),
          _divider,
          const CheckoutRow(label: "Total Cost", trailingText: "\$13.97"),
          _divider,
          const SizedBox(height: 30),
          const TermsConditionsAgreement(),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: AppButton(
              label: "Place Order",
              fontWeight: FontWeight.w600,
              padding: const EdgeInsets.symmetric(vertical: 25),
              onPressed: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (_) => const OrderFailedDialog(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

const _divider = Divider(thickness: 1, color: Color(0xFFE2E2E2));
