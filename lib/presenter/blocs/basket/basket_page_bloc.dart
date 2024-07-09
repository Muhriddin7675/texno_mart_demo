import 'package:bloc/bloc.dart';
import 'package:flutter_retrofit_texnomart/data/model/basket/basket_model.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/domain/model/basket_ui_data.dart';
import 'package:meta/meta.dart';

import '../../../utils/status.dart';

part 'basket_page_event.dart';

part 'basket_page_state.dart';

class BasketPageBloc extends Bloc<BasketPageEvent, BasketPageState> {
  BasketPageBloc()
      : super(BasketPageState(
            status: Status.loading,
            allProduct: [],
            basketModel: [],
            allProductSum: 0,
            allProductCount: 0)) {
    on<GetAllBasketList>((event, emit) {
      try {
        emit(BasketPageState(
            status: Status.loading,
            allProduct: [],
            basketModel: [],
            allProductSum: 0,
            allProductCount: 0));
        var basketList = MyHiveHelper.getAllBasket();
        List<BasketUiData> uiList = [];
        print(basketList.length);
        print(basketList);
          var allProductSum = 0;
          var allProductCount = 0;

        for (var item in basketList) {
          if(item.isChecked){
            allProductCount += item.count;
            allProductSum += (item.price * item.count);
          }
          uiList.add(BasketUiData(
              id: item.productId,
              name: item.name,
              image: item.image,
              price: item.price,
              isCheck: true,
              isFav: MyHiveHelper.isHasFavorite(item.productId),
              count: item.count));

        }
        emit(BasketPageState(
            status: Status.success,
            allProduct: uiList,
            basketModel: basketList,
            allProductSum: allProductSum,
            allProductCount: allProductCount));
      } catch (e) {
        emit(BasketPageState(
            status: Status.fail,
            errorMessage: e.toString(),
            allProduct: [],
            basketModel: [],
            allProductSum: 0,
            allProductCount: 0));
      }
    });
  }
}
