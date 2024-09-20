import 'package:flutter/material.dart';

class AdScrollIndicator extends StatelessWidget {
  final Color color;

  const AdScrollIndicator({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
