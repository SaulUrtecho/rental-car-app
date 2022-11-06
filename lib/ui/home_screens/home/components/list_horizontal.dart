import 'package:flutter/material.dart';

import 'package:rental_car_app/ui/home_screens/home/components/tap_type.dart';

class ListHorizontal extends StatefulWidget {
  const ListHorizontal({super.key});

  @override
  State<ListHorizontal> createState() => _ListHorizontalState();
}

class _ListHorizontalState extends State<ListHorizontal> {
  final List<CarTypeTap> carTypes = [
    CarTypeTap(name: 'All', isSelected: true),
    CarTypeTap(name: 'Hatchback'),
    CarTypeTap(name: 'Compact SUV'),
    CarTypeTap(name: 'SUV'),
    CarTypeTap(name: 'Sedan'),
    CarTypeTap(name: 'MPV'),
    CarTypeTap(name: 'Luxury'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: carTypes.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 8.0),
        itemBuilder: (context, index) {
          return TapType(
            text: carTypes[index].name,

            /// when user selected a tap created in TapType, send the voidcallback on this file
            /// and this set false value in all taps, after, the value of isSelected is updated in true
            /// with setState(), finally, we passed this value to TapType class for change colors in text and tap
            onTap: () {
              for (final item in carTypes) {
                item.isSelected = false;
              }
              setState(() => carTypes[index].isSelected = true);
            },
            isSelected: carTypes[index].isSelected,
          );
        },
      ),
    );
  }
}

class CarTypeTap {
  String name;
  bool isSelected;
  CarTypeTap({required this.name, this.isSelected = false});
}
