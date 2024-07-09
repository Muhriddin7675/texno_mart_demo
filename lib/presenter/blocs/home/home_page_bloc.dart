import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/slider/slider_response.dart';
import 'package:flutter_retrofit_texnomart/domain/texnomart_repository.dart';

import '../../../data/sourse/remote/respons/new_product/new_product_response.dart';
import '../../../data/sourse/remote/respons/spesical_categories/special_categories.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState(status: Status.loading, notificationCount: 0)) {
    var repository = di<TexnomartRepository>();
    late SliderResponse resultSlider;
    late SpecialCategories resultSpecialCategories;
    late NewProductResponse productDataList;
    on<HomePageEvent>((event, emit) async {
      try {
        emit(HomePageState(status: Status.loading, notificationCount: 0));

        final results = await Future.wait([
          repository.getSlider(),
          repository.getSpecialCategories(),
          repository.getNewProductResponse(),
        ]);

        var notificationCount = 0;
        var basketList = MyHiveHelper.getAllBasket();

        for (var item in basketList) {
          notificationCount += item.count;
        }
        resultSlider = results[0] as SliderResponse;
        resultSpecialCategories = results[1] as SpecialCategories;
        productDataList = results[2] as NewProductResponse;
        print("resultSpecialCategories  $resultSpecialCategories");
        emit(HomePageState(
            status: Status.success,
            sliderResponse: resultSlider,
            specialCategories: resultSpecialCategories,
            productData: productDataList.data?.data,notificationCount: notificationCount));
      } on DioException catch (e) {
        emit(HomePageState(
            status: Status.fail,
            errorMessage: e.message,
            notificationCount: 0));
      }
    });
    on<GetFavoriteEvent>((event, emit) async {
      if (resultSlider != null) {
        emit(HomePageState(
            status: Status.success,
            sliderResponse: resultSlider,
            specialCategories: resultSpecialCategories,
            productData: productDataList.data?.data,
            notificationCount: 0));
      }
    });
  }
}
