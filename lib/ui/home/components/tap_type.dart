import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/design/app_colors.dart';

class TapType extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const TapType({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isSelected == true ? AppColors.green : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0,
                spreadRadius: 0.5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: TextStyle(color: isSelected == true ? Colors.white : Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
