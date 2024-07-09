import 'package:bloc/bloc.dart';
import 'package:flutter_retrofit_texnomart/data/model/favorite/favorite_model.dart';
import 'package:meta/meta.dart';

import '../../../data/sourse/local/my_hive_helper.dart';
import '../../../utils/status.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState(status: Status.loading)) {
    on<FavoriteEvent>((event, emit) {
      try {
        emit(FavoriteState(status: Status.loading));
        var favoriteList = MyHiveHelper.getAllFavorite();
        print(favoriteList);
        emit(FavoriteState(status: Status.success, allProduct: favoriteList ?? []));
      }  catch (e) {
        emit(FavoriteState(status: Status.fail, errorMessage: e.toString()));
      }

    });
  }
}
