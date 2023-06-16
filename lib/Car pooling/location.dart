import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
   GoogleMapController? mapController;
   LatLng? currentLocation;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async {
    // Location permission code here (similar to the previous answer)

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      currentLocation = LatLng( 10.976036, 76.225441);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: currentLocation ?? LatLng(0, 0),
          zoom: 14.0,
        ),
        onMapCreated: (controller) {
          setState(() {
            mapController = controller;
          });
        },
        markers: Set<Marker>.from([
          Marker(
            markerId: MarkerId('currentLocation'),
            position: currentLocation ?? LatLng(0, 0),
            icon: BitmapDescriptor.defaultMarker,
          ),
        ]),
      ),
    );
  }
}

