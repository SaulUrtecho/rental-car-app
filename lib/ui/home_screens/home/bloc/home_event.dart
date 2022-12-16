part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class OnLoadData extends HomeEvent {
  const OnLoadData();

  @override
  String toString() => 'OnLoadData';
}
