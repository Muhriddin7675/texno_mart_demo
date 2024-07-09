import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/product_detail/product_detail_response.dart';
import 'package:flutter_retrofit_texnomart/domain/texnomart_repository.dart';
import 'package:meta/meta.dart';

import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailScreenState> {
  DetailBloc() : super(DetailScreenState(status: Status.loading)) {
    var repository = di<TexnomartRepository>();
    late ProductDetailResponse productResult;
    on<LoadDetailEvent>((event, emit) async {
      try {
        emit(DetailScreenState(status: Status.loading));
        productResult = await repository.getByIdProductData(event.id);
        emit(DetailScreenState(status: Status.success, productData: productResult));
      } on DioException catch (e) {
        emit(DetailScreenState(status: Status.fail, errorMessage: e.message));
      }
    });

    on<GetDetailEvent>((event, emit) async {
        emit(DetailScreenState(status: Status.success, productData: productResult));
    });
  }
}
