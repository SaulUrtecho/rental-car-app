import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/home_screens/home/components/home_grid.dart';
import 'package:rental_car_app/ui/home_screens/home/components/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          HomeHeader(),
          HomeGrid(),
        ],
      ),
    );
  }
}
