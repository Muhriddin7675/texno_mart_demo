import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../data/sourse/remote/respons/map/location_response.dart';
import '../../../di/di.dart';
import '../../../domain/texnomart_repository.dart';
import '../../../utils/status.dart';

part 'map_list_event.dart';

part 'map_list_state.dart';

class MapListBloc extends Bloc<MapListEvent, MapListState> {
  MapListBloc() : super(MapListState(status: Status.loading)) {
    var repository = di<TexnomartRepository>();
    List<OpenedStores> locationMomentList = [];
    List<Data> dataList = [];
    on<LoadMapListEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading));
        var location = await repository.getLocationList();
        print(location.data);
        dataList = location.data?.data ?? [];
        for (var data in dataList) {
          if ((data.name!).toLowerCase().startsWith("Barchasi".toLowerCase())) {
            locationMomentList = data.openedStores ?? [];
            emit(state.copyWith(status: Status.success, allLocation: data.openedStores, nameCategory: data.name));
            break;
          }
        }
      } on DioException catch (e) {
        emit(state.copyWith(status: Status.fail, errorMessage: e.message));
      }
    });
    on<LoadByCategoryMapListEvent>((event, emit) async {
        for (var data in dataList) {
          if ((data.name!).toLowerCase().startsWith(event.category.toLowerCase())) {
            locationMomentList = data.openedStores ?? [];
            emit(state.copyWith(status: Status.success, allLocation: data.openedStores, nameCategory: data.name));
            break;
          }
        }

    });
    on<SearchMapListEvent>((event, emit) async {
      List<OpenedStores> list = [];
      for (var data in locationMomentList) {
        if ((data.address ?? "").toLowerCase().contains(event.searchText.toLowerCase())) {
          list.add(data);
        }
      }
      emit(state.copyWith(
        status: Status.success,
        allLocation: list,
      ));
    });

    on<OpenMapScreen>((event, emit) async {
      emit(state.copyWith(status: Status.success, mapData: event.mapData));
    });
  }
}
