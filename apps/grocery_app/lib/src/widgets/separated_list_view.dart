import 'package:flutter/material.dart';

class SeparatedListView extends StatelessWidget {
  final List<Widget> children;
  final Widget seperator;
  final bool addToLastChild;

  const SeparatedListView({
    super.key,
    required this.children,
    required this.seperator,
    this.addToLastChild = true,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    if (children.isNotEmpty) {
      list.add(seperator);
      for (int i = 0; i < children.length; i++) {
        list.add(children[i]);
        if (children.length - i == 1) {
          if (addToLastChild) {
            list.add(seperator);
          }
        } else {
          list.add(seperator);
        }
      }
    }
    return Column(children: list);
  }
}
