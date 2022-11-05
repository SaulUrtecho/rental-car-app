import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/home/components/card_grid.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  List<CarDetails> get cars => const [
        CarDetails(name: 'Ford', image: 'assets/img/car.png'),
        CarDetails(name: 'Nissan', image: 'assets/img/car.png'),
        CarDetails(name: 'Audi', image: 'assets/img/car.png'),
        CarDetails(name: 'Toyota', image: 'assets/img/car.png'),
        CarDetails(name: 'Afdfd', image: 'assets/img/car.png'),
        CarDetails(name: 'Tsasa', image: 'assets/img/car.png'),
      ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        itemCount: cars.length,
        itemBuilder: (_, index) => CardGrid(cars[index]), // we pass the CarDetails obj
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
      ),
    );
  }
}

class CarDetails {
  final String name;
  final String image;

  const CarDetails({required this.name, required this.image});
}
