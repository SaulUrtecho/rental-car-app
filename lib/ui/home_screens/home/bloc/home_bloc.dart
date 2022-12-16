import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rental_car_app/data/remote/repositories/car_repository.dart';
import 'package:rental_car_app/data/remote/responses/car_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CarRepository _carRepository;

  HomeBloc(this._carRepository) : super(HomeState.initial()) {
    on<OnLoadData>(_onLoadData);
  }

  Future<void> _onLoadData(OnLoadData event, Emitter<HomeState> emit) async {
    final cars = await _carRepository.getCars();
    emit(state.copyWith(isLoading: false, cars: cars));
  }
}
