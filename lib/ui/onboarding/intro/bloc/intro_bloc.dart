import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car_app/ui/onboarding/intro/bloc/commands.dart';

part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroState.initial()) {
    on<OnBottomButtonTapped>(_onBottomButtonTapped);
    on<ClearCommand>((_, emit) => emit(state.copyWith()));
    on<OnIndexChanged>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }

  void _onBottomButtonTapped(OnBottomButtonTapped event, Emitter<IntroState> emit) {
    if (state.index < 2) {
      emit(state.copyWith(command: AnimateTo(state.index + 1)));
    } else {
      emit(state.copyWith(command: NavigateTo()));
    }
  }
}
