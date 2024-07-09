part of 'main_bloc.dart';

final class MainState {
  int? index;
  int notificationCount;

  MainState({ this.index, required this.notificationCount});

  MainState copWith(
    int? index,
    int? notificationCount,
  ) =>
      MainState(index: index ?? this.index, notificationCount: notificationCount ?? this.notificationCount);
}
