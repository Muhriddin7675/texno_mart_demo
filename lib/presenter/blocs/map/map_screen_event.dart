part of 'map_screen_bloc.dart';

@immutable
sealed class MapScreenEvent {}

class LoadMapScreenEvent  extends MapScreenEvent{
  final OpenedStores mapData;

  LoadMapScreenEvent({required this.mapData});

}
