part of 'home_bloc.dart';

class HomeState extends Equatable {
  final bool isLoading;
  final List<CarModel> cars;

  const HomeState({
    required this.isLoading,
    required this.cars,
  });

  @override
  List<Object> get props => [isLoading, cars];

  HomeState copyWith({bool? isLoading, List<CarModel>? cars}) {
    return HomeState(isLoading: isLoading ?? this.isLoading, cars: cars ?? this.cars);
  }

  factory HomeState.initial() {
    return const HomeState(isLoading: true, cars: []);
  }
}
