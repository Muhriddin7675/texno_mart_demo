import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/sourse/remote/respons/map/location_response.dart';

part 'map_screen_event.dart';
part 'map_screen_state.dart';

class MapScreenBloc extends Bloc<MapScreenEvent, MapScreenState> {
  MapScreenBloc() : super(MapScreenState()) {
    on<LoadMapScreenEvent>((event, emit) {
      emit(MapScreenState(mapData: event.mapData));
    });
  }
}
