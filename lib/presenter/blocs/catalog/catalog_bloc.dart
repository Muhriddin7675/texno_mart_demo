import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/catalog/catalog_menu.dart';
import 'package:flutter_retrofit_texnomart/domain/texnomart_repository.dart';

import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogPageState> {
  CatalogBloc() : super(CatalogPageState(status: Status.loading)) {
    var repository = di<TexnomartRepository>();
    on<CatalogEvent>((event, emit) async {
      try {
        emit(CatalogPageState(status: Status.loading));
        var catalogResult = await repository.getCatalogMenu();
      /*  print("catalogResult");
        print(catalogResult);*/
        emit(CatalogPageState(status: Status.success, catalogData: catalogResult));
      } on DioException catch (e) {
        emit(CatalogPageState(status: Status.fail, errorMessage: e.message));
      }
    });
  }
}
