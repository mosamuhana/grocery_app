import 'package:flutter/material.dart';

import '../constants.dart';

class ItemCounter extends StatefulWidget {
  final ValueChanged<int>? onChanged;

  const ItemCounter({super.key, this.onChanged});

  @override
  State<StatefulWidget> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (amount > 0) {
              _addAmount(-1);
            }
          },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: const Color(0xffE2E2E2)),
            ),
            child: const Center(
              child: Icon(Icons.remove, color: kDarkGrey, size: 25),
            ),
          ),
        ),
        const SizedBox(width: 18),
        SizedBox(
          width: 30,
          child: Center(
            child: Text(
              '$amount',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(width: 18),
        GestureDetector(
          onTap: () => _addAmount(1),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: const Color(0xffE2E2E2)),
            ),
            child: const Center(
              child: Icon(Icons.add, color: kPrimaryColor, size: 25),
            ),
          ),
        ),
      ],
    );
  }

  void _addAmount(int value) {
    amount += value;
    widget.onChanged?.call(amount);
    setState(() {});
  }
}
