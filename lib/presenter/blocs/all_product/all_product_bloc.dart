import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/chips/chips_response.dart';
import 'package:flutter_retrofit_texnomart/domain/texnomart_repository.dart';

import '../../../data/sourse/remote/respons/product_all_category/product_all_category.dart';
import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'all_product_event.dart';

part 'all_product_state.dart';

class AllProductBloc extends Bloc<ByCategoryAllProductEvent, AllProductState> {
  AllProductBloc()
      : super(AllProductState(
          allProductStatus: Status.loading,
          chipsStatus: Status.loading,
        )) {
    var repository = di<TexnomartRepository>();
    late ProductAllCategory catalogResult;
    late List<Categories> chipsDataList;
    List<String> chipsList = [];

    on<AllProductEvent>((event, emit) async {
      try {
        emit(state.copyWith(allProductStatus: Status.loading));

        catalogResult = await repository.getAllByCategory(event.category, null, null);

        emit(state.copyWith(allProduct: catalogResult, allProductStatus: Status.success, chipsIndex: event.chipsIndex));
      } on DioException catch (e) {
        emit(state.copyWith(
          allProductStatus: Status.fail,
          errorMessage: e.message,
        ));
      }
    });

    on<GetAllProductFavorite>((event, emit) {
      emit(state.copyWith(allProduct: catalogResult, chipsNameList: chipsList, allProductStatus: Status.success, chipsListData: chipsDataList));
    });

    on<LoadChipsList>((event, emit) async {
      try {
        emit(state.copyWith(chipsNameList: [], chipsStatus: Status.loading, chipsListData: []));

        var chipsResponse = await repository.getChips(event.category);
        chipsDataList = chipsResponse.data?.categories ?? [];

        for (var item in chipsDataList) {
          chipsList.add(item.name ?? "");
        }

        emit(state.copyWith(chipsListData: chipsDataList, chipsNameList: chipsList, chipsStatus: Status.success));
      } on DioException catch (e) {
        emit(state.copyWith(errorMessage: e.message, chipsNameList: [], chipsListData: []));
      }
    });
  }
}
