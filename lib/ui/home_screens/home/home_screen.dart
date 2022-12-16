import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/data/remote/repositories/car_repository.dart';
import 'package:rental_car_app/ui/home_screens/home/bloc/home_bloc.dart';
import 'package:rental_car_app/ui/home_screens/home/components/home_grid.dart';
import 'package:rental_car_app/ui/home_screens/home/components/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(CarRepository())..add(const OnLoadData()),
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: const [
            HomeHeader(),
            HomeGrid(),
          ],
        ),
      ),
    );
  }
}
