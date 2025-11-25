import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsHome extends StatefulWidget {
  const GoogleMapsHome({super.key});

  @override
  State<GoogleMapsHome> createState() => _GoogleMapsHomeState();
}

class _GoogleMapsHomeState extends State<GoogleMapsHome> {
  @override
  Widget build(BuildContext context) {
    late GoogleMapController _mapController;
    return Scaffold(
      appBar: AppBar(title: Text("Google Map")),
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        trafficEnabled: true,
        onTap: (LatLng latlng) {
          print(latlng);
        },
        initialCameraPosition: CameraPosition(
          zoom: 16,
          target: LatLng(22.357281117989427, 91.84026066525638),
        ),
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
      ),
    );
  }
}
