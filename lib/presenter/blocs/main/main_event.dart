part of 'main_bloc.dart';



abstract class MainEvent {
}

final class LoadByIndexMainBottomNavigator extends MainEvent {

  final int index;

  LoadByIndexMainBottomNavigator({required this.index});

}
final class SetBasketNotificationCount extends MainEvent{

}
