part of 'map_list_bloc.dart';

class MapListState {
  final List<OpenedStores>? allLocation;
  final Status status;
  final String? nameCategory;
  final String? errorMessage;
  final OpenedStores? mapData;

  MapListState( {this.mapData,this.nameCategory, this.allLocation, required this.status, this.errorMessage});

  MapListState copyWith({
    final List<OpenedStores>? allLocation,
    final Status? status,
    final String? errorMessage,
    final String? nameCategory,
    final OpenedStores? mapData,

  }) =>
      MapListState(
          status: status ?? this.status,
          errorMessage: errorMessage ?? this.errorMessage,
          allLocation: allLocation ?? this.allLocation,
          nameCategory: nameCategory ?? this.nameCategory,
          mapData : mapData ?? this.mapData
      );
}
