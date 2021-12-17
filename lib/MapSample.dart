import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class MapSample extends StatefulWidget {
  final Set<Marker> _markers = Set();

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _ubicacionInicial = CameraPosition(
    target: LatLng(6.621349811242021, -74.43515542385313),
    zoom: 14.4746,
  );

  static CameraPosition camPosicionUbicacion = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(6.621349811242021, -74.43515542385313),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  var _markers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: _markers,
        mapType: MapType.normal,
        initialCameraPosition: _ubicacionInicial,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Mi ubicacion!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    _getUbicacionActual();
    final GoogleMapController controller = await _controller.future;
    controller
        .animateCamera(CameraUpdate.newCameraPosition(camPosicionUbicacion));
  }

  Future<void> _getUbicacionActual() async {
    //objeto geolocator que obtendra la ubicacion actual
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    Geolocator
    .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) async {
      setState(() {
        //imprimir la posicion actual en log
        print(position);
        //Actualizar  camera position
        camPosicionUbicacion = CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(position.latitude, position.longitude),
            tilt: 59.440717697143555,
            zoom: 19.151926040649414);
      });
      //agregar marcador con ubicacion actual
      _markers.add(
        Marker(
          markerId: MarkerId('newyork'),
          position: LatLng(position.latitude, position.longitude),
        ),
      );
      //crear controller google map
      final GoogleMapController controller = await _controller.future;
      controller
          .animateCamera(CameraUpdate.newCameraPosition(camPosicionUbicacion));
    }).catchError((e) {
      print(e);
    });
  }

  Future<void> _goToNewYork() async {
    double lat = 40.7128;
    double long = -74.0060;
    GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 10));
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Tu ubicacion'),
          position: LatLng(lat, long),
        ),
      );
    });
  }
}
