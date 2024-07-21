import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/slider/slider_response.dart';
import 'package:flutter_retrofit_texnomart/domain/texnomart_repository.dart';
import '../../../data/sourse/remote/respons/spesical_categories/special_categories.dart';
import '../../../data/sourse/remote/respons/type_product/type_product_response.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState(status: Status.loading)) {
    var repository = di<TexnomartRepository>();
    late SliderResponse resultSlider;
    late SpecialCategories resultSpecialCategories;
    late TypeProductResponse newProductDataList;
    late TypeProductResponse xitProductDataList;
    late TypeProductResponse climateProductDataList;
    on<GetSliderEvent>((event, emit) async {
      try {
        emit(HomePageState(status: Status.loading));

        final results = await Future.wait([
          repository.getSlider(),
          repository.getSpecialCategories(),
          repository.getByTypeProductResponse("new_products"),
          repository.getByTypeProductResponse("hit_products"),
          repository.getByTypeProductResponse("climate"),
        ]);

        resultSlider = results[0] as SliderResponse;
        resultSpecialCategories = results[1] as SpecialCategories;
        newProductDataList = results[2] as TypeProductResponse;
        xitProductDataList = results[3] as TypeProductResponse;
        climateProductDataList = results[4] as TypeProductResponse;

        emit(HomePageState(
          status: Status.success,
          sliderResponse: resultSlider,
          specialCategories: resultSpecialCategories,
          newProductData: newProductDataList.data?.data,
          xitProductData: xitProductDataList.data?.data,
          climateProductData: climateProductDataList.data?.data,
        ));
      } on DioException catch (e) {
        emit(HomePageState(
          status: Status.fail,
          errorMessage: e.message,
        ));
      }
    });
    on<GetFavoriteEvent>((event, emit) async {
      print(xitProductDataList.data?.data);
      emit(HomePageState(
        status: Status.success,
        sliderResponse: resultSlider,
        specialCategories: resultSpecialCategories,
        newProductData: newProductDataList.data?.data,
        xitProductData: xitProductDataList.data?.data,
        climateProductData: climateProductDataList.data?.data,
      ));
    });
  }
}
