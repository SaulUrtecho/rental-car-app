part of 'intro_bloc.dart';

class IntroState extends Equatable {
  // parameter(variable) type Command
  final Command? command;
  final int index;

  const IntroState({this.command, required this.index});

  // we register the parameters inside equatable list
  // for can compare their values in their previous and current state
  @override
  List<Object?> get props => [command, index];

  IntroState copyWith({Command? command, int? index}) {
    return IntroState(command: command, index: index ?? this.index);
  }

  // named constructor, this return a instance of itself
  factory IntroState.initial() => const IntroState(index: 0);
}
