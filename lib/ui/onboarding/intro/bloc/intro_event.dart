part of 'intro_bloc.dart';

abstract class IntroEvent {
  const IntroEvent();
}

class OnBottomButtonTapped extends IntroEvent {
  const OnBottomButtonTapped();

  @override
  String toString() => 'OnBottomButtonTapped';
}

class ClearCommand extends IntroEvent {
  const ClearCommand();
  // this override is for we can see the logs in the BlocObserver
  @override
  String toString() => 'ClearCommand';
}

// event-class will be used in TabController
// this event-class receive the index
class OnIndexChanged extends IntroEvent {
  final int index;
  const OnIndexChanged(this.index);

  @override
  String toString() => 'OnIndexChanged';
}
