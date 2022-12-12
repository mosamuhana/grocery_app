import 'package:flutter/material.dart';

import '../constants.dart';
import '../models.dart';
import '../widgets.dart';

class ChartItem extends StatefulWidget {
  final Product item;

  const ChartItem({super.key, required this.item});

  @override
  State<StatefulWidget> createState() => _ChartItemState();
}

class _ChartItemState extends State<ChartItem> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 100,
              child: kIsNetworkImage
                  ? Image.network(widget.item.image)
                  : Image.asset(widget.item.image),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.item.name,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 5),
                AppText(
                  text: '${widget.item.description}',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: kDarkGrey,
                ),
                const SizedBox(height: 12),
                const Spacer(),
                ItemCounter(
                  onChanged: (newAmount) => setState(() => amount = newAmount),
                )
              ],
            ),
            Column(
              children: [
                const Icon(Icons.close, color: kDarkGrey, size: 25),
                const Spacer(flex: 5),
                SizedBox(
                  width: 70,
                  child: AppText(
                    text: "\$${(widget.item.price * amount).toStringAsFixed(2)}",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
