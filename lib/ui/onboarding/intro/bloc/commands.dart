// in this abstract class, we define two types of "actions"
// which we will call "Commands"
abstract class Command {}

// class for TabController
// this need the current index
class AnimateTo extends Command {
  final int index;

  AnimateTo(this.index);
}

class NavigateTo extends Command {}
