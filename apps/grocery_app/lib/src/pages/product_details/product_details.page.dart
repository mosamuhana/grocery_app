import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models.dart';
import '../../widgets.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product item;
  final String? heroTagSuffix;

  const ProductDetailsPage({
    required this.item,
    super.key,
    this.heroTagSuffix,
  });

  @override
  State<StatefulWidget> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _imageHeader,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        widget.item.name,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      subtitle: AppText(
                        text: '${widget.item.description}',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kDarkGrey,
                      ),
                      trailing: const FavoriteToggleIcon(),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        ItemCounter(
                          onChanged: (value) => setState(() => amount = value),
                        ),
                        const Spacer(),
                        Text(
                          "\$${(amount * widget.item.price).toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Divider(thickness: 1),
                    const ProductDataRow(
                      label: "Product Details",
                    ),
                    const Divider(thickness: 1),
                    ProductDataRow(
                      onPressed: () {},
                      label: "Nutritions",
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const AppText(
                          text: "100gm",
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: kDarkGrey,
                        ),
                      ),
                    ),
                    const Divider(thickness: 1),
                    ProductDataRow(
                      onPressed: () {},
                      label: "Review",
                      child: const StarRating(),
                    ),
                    const Spacer(),
                    const AppButton(label: "Add To Basket"),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _imageHeader {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF3366FF).withOpacity(0.1),
            const Color(0xFF3366FF).withOpacity(0.09),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Hero(
        tag: "GroceryItem:${widget.item.name}-${widget.heroTagSuffix ?? ""}",
        child: Image(
          image: AssetImage(widget.item.image),
        ),
      ),
    );
  }
}
