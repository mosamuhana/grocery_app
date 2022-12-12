import 'package:flutter/material.dart';

import '../../widgets.dart';
import '../../constants.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.close, color: Colors.black),
        ),
        title: const AppText(
          text: "Filters",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F3F2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories',
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const _OptionItem(text: "Eggs"),
            const SizedBox(height: 15),
            const _OptionItem(text: "Noodles & Pasta"),
            const SizedBox(height: 15),
            const _OptionItem(text: "Chips & Crisps"),
            const SizedBox(height: 15),
            const _OptionItem(text: "Fast Food"),
            const SizedBox(height: 30),
            const Text(
              'Brand',
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const _OptionItem(text: "Individual Collection"),
            const SizedBox(height: 15),
            const _OptionItem(text: "Cocacola"),
            const SizedBox(height: 15),
            const _OptionItem(text: "Ifad"),
            const SizedBox(height: 15),
            const _OptionItem(text: "Kazi Formas"),
            const Spacer(),
            AppButton(
              label: "Apply Filter",
              fontWeight: FontWeight.w600,
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}

class _OptionItem extends StatefulWidget {
  final String text;

  const _OptionItem({required this.text});

  @override
  State<StatefulWidget> createState() => _OptionItemState();
}

class _OptionItemState extends State<_OptionItem> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => checked = !checked),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: SizedBox(
              width: 25,
              height: 25,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: checked ? 0 : 1.5, color: const Color(0xffB1B1B1)),
                  borderRadius: BorderRadius.circular(8),
                  color: checked ? kPrimaryColor : Colors.transparent,
                ),
                child: Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.transparent),
                  child: Checkbox(
                    value: checked,
                    onChanged: (state) => setState(() => checked = !checked),
                    activeColor: Colors.transparent,
                    checkColor: Colors.white,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            widget.text,
            style: TextStyle(
              color: checked ? kPrimaryColor : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
