import 'package:flutter/material.dart';

// this class build a dot for each TabView
class Dot extends StatelessWidget {
  final int index;
  final int currentIndex;

  const Dot({super.key, required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return index == currentIndex
        ? const DecoratedBox(
            decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
            child: SizedBox(height: 12, width: 12))
        : const DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            child: SizedBox(height: 8, width: 8));
  }
}
