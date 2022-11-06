import 'package:flutter/material.dart';
import 'package:rental_car_app/data/remote/repositories/beer_repository.dart';
import 'package:rental_car_app/ui/home_screens/home/components/card_grid.dart';

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
    return FutureBuilder(
      future: BeerRepository().getBeers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final newCars = snapshot.data!.map((e) => CarDetails(name: e.name, image: 'assets/img/car.png')).toList();
          return Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: newCars.length,
              itemBuilder: (_, index) => CardGrid(newCars[index]), // we pass the CarDetails obj
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
            ),
          );
        } else {
          return const Center(
            child: SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

class CarDetails {
  final String name;
  final String image;

  const CarDetails({required this.name, required this.image});
}
