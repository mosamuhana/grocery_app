import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int value;
  final double size;

  const StarRating({
    super.key,
    this.value = 5,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    final rate = value.clamp(0, 5);
    return Row(
      children: [
        for (var i = 0; i < rate; i++)
          Icon(
            Icons.star,
            color: i <= rate ? _activeStart : _inactiveStart,
            size: size,
          ),
      ],
    );
  }
}

const _activeStart = Colors.yellow;
const _inactiveStart = Colors.grey;
