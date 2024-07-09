import 'package:bloc/bloc.dart';

import '../../../data/sourse/local/my_hive_helper.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState(index: 0, notificationCount: 0)) {
    on<LoadByIndexMainBottomNavigator>((event, emit) {
      print("LoadByIndexMainBottomNavigator  index ${event.index}");
      var basketList = MyHiveHelper.getAllBasket();
      emit(MainState(index: event.index, notificationCount: basketList.length));
    });
    on<SetBasketNotificationCount>((event, emit) {
      var basketList = MyHiveHelper.getAllBasket();
      emit(MainState(notificationCount: basketList.length));
    });
  }
}
