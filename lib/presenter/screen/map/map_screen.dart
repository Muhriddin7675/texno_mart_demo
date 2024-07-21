import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/map/location_response.dart';
import 'package:flutter_retrofit_texnomart/utils/my_text.dart';
import 'package:flutter_retrofit_texnomart/utils/widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../utils/map/app_lat_long.dart';
import '../../../utils/map/location_service.dart';
import '../../blocs/map/map_screen_bloc.dart';

class MapScreen extends StatefulWidget {
  final OpenedStores mapData;

  const MapScreen({Key? key, required this.mapData}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapControllerCompleter = Completer<YandexMapController>();
  final List<MapObject> mapObjects = [];

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    await _initPermission();
    await _moveToCurrentLocation(widget.mapData);
  }

  Future<void> _initPermission() async {
    if (!await LocationService().checkPermission()) {
      await LocationService().requestPermission();
    }
  }

  Future<AppLatLong> _fetchCurrentLocation() async {
    AppLatLong location;
    const defLocation = MoscowLocation();
    try {
      location = await LocationService().getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }
    return location;
  }

  Future<void> _moveToCurrentLocation(OpenedStores data) async {
    mapObjects.add(PlacemarkMapObject(
      mapId: MapObjectId(data.id.toString()),
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          scale: 0.3, // Adjust size as needed
          image: BitmapDescriptor.fromAssetImage(
            "assets/marker.png",
          ),
        ),
      ),
      point: Point(
        latitude: double.parse(data.lat!),
        longitude: double.parse(data.long!),
      ),
    ));
    setState(() {});
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: double.parse(data.lat!),
            longitude: double.parse(data.long!),
          ),
          zoom: 15,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapScreenBloc, MapScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        var mapData = widget.mapData;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme
                .of(context)
                .primaryColor,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            title: MyText.textBold("Do'konlar", Colors.black, 20),
          ),
          body: Column(
            children: [
              Expanded(
                child: YandexMap(
                  onMapCreated: (controller) {
                    mapControllerCompleter.complete(controller);
                  },
                  onMapTap: (point) {
                    print('LAT ----------------------');
                    print(point.latitude);
                    print(point.latitude);
                  },
                  onObjectTap: (geoObject) {
                    print('NAMEEE -[-------------------');
                    print(geoObject.name);
                  },
                  zoomGesturesEnabled: true,
                  mapObjects: mapObjects,
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _itemRow(mapData.address!, true, Icons.location_on_rounded),
                    _itemRow("Du-Yak(${mapData.workTime})", false, Icons.access_time_rounded),
                    _itemRow(mapData.phone!, false, Icons.call_outlined),
                    GestureDetector(
                      onTap: () {
                        _openGoogleMaps(destinationLat: double.parse(mapData.lat!), destinationLng: double.parse(mapData.long!));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(width: 1.5, color: Colors.black12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.route_outlined, color: Colors.orange, size: 24),
                            const SizedBox(width: 4),
                            MyText.textBold("Marshrut", Colors.black, 16)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _itemRow(String text, bool textStyle, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.black45, size: 20),
          const SizedBox(width: 16),
          Expanded(child: (textStyle) ? MyText.textBold(text, Colors.black, 16) : MyText.textNormal(text, Colors.black, 14))
        ],
      ),
    );
  }

  void _openGoogleMaps({required double destinationLat, required double destinationLng}) async {
    final AppLatLong currentLocation = await _fetchCurrentLocation();

      final double originLat = currentLocation.lat;
      final double originLng = currentLocation.long;

      final Uri googleMapsUri = Uri(
        scheme: 'https',
        host: 'www.google.com',
        path: '/maps/dir/',
        queryParameters: {
          'api': '1',
          'origin': '$originLat,$originLng',
          'destination': '$destinationLat,$destinationLng',
          'travelmode': 'driving'
        },
      );
     await _launchInBrowser(googleMapsUri);

}

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}}
