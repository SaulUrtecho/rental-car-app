import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/ui/onboarding/intro/bloc/intro_bloc.dart';

// this class build a dot for each TabView
class Dot extends StatelessWidget {
  final int index;

  const Dot({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroBloc, IntroState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return index == state.index
            ? const DecoratedBox(
                decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                child: SizedBox(height: 12, width: 12))
            : const DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: SizedBox(height: 8, width: 8));
      },
    );
  }
}
