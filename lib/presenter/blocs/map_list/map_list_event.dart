part of 'map_list_bloc.dart';

@immutable
sealed class MapListEvent {}

class LoadMapListEvent extends MapListEvent {


}

class LoadByCategoryMapListEvent extends MapListEvent{
  String category;
  LoadByCategoryMapListEvent({required this.category});
}

class SearchMapListEvent extends MapListEvent{
  String searchText;
  SearchMapListEvent({required this.searchText});
}

class OpenMapScreen extends MapListEvent{
  final OpenedStores mapData;
  OpenMapScreen({required this.mapData});
}
