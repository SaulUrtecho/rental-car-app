import 'package:flutter/material.dart';
import 'package:rental_car_app/data/remote/repositories/car_repository.dart';
import 'package:rental_car_app/ui/home_screens/home/components/card_grid.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // ignore: discarded_futures
      future: CarRepository().getCars(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final cars = snapshot.data;
          return Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: cars!.length,
              itemBuilder: (_, index) => CardGrid(cars[index]), // we pass the CarDetails obj
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
