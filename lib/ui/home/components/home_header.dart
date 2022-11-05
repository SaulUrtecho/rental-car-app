import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/home/components/available_near_row.dart';
import 'package:rental_car_app/ui/home/components/card_header.dart';
import 'package:rental_car_app/ui/home/components/list_horizontal.dart';
import 'package:rental_car_app/ui/home/components/ubication_row.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 30),
        UbicationRow(),
        SizedBox(height: 8),
        CardHeader(),
        SizedBox(height: 8),
        ListHorizontal(),
        SizedBox(height: 12),
        TextAvailableNextYou(),
        AvailableNearRow(),
      ],
    );
  }
}
