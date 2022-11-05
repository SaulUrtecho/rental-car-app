import 'package:flutter/material.dart';

class CardShadow extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final double radius;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  const CardShadow({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.radius = 10,
    this.onTap,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1.0, spreadRadius: 0.5)],
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
