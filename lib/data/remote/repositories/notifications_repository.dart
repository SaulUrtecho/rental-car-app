class NotificationsRepository {
  Stream<int> notificationsCounter() async* {
    var i = 1;
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield i++;
      if (i == 13) {
        break;
      }
    }
  }
}
