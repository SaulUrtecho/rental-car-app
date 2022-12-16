import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/ui/app.dart';
import 'package:rental_car_app/ui/bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const App());
}
