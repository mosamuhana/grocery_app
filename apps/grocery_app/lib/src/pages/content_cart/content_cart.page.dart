import 'package:flutter/material.dart';

import '../../data.dart';
import '../../widgets.dart';

class ContentCartPage extends StatelessWidget {
  const ContentCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              const Text(
                "My Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SeparatedListView(
                addToLastChild: false,
                seperator: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(thickness: 1),
                ),
                children: [
                  for (final item in demoGroceryItems)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      width: double.maxFinite,
                      child: ChartItem(item: item),
                    ),
                ],
              ),
              const Divider(thickness: 1),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: AppButton(
                  label: "Go To Check Out",
                  fontWeight: FontWeight.w600,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  trailing: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: _cartAmountColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "\$12.96",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (_) => const CheckoutBottomSheet(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const _cartAmountColor = Color(0xff489E67);
