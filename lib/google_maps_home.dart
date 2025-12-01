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
        markers: <Marker>{
          Marker(
            markerId: MarkerId("office"),
            position: LatLng(22.35709078251976, 91.84002824127674),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueAzure,
            ),
            onTap: () {
              print("tapped on Bali Arcade Market");
            },
            infoWindow: InfoWindow(title: "Marker title", onTap: () {}),
            draggable: true,
            onDragStart: (LatLng startLatLng) {
              print("Drag start: $startLatLng");
            },
            onDragEnd: (LatLng endLatLng) {
              print("Drag End: $endLatLng");
            },
          ),
        },
        circles: <Circle>{
          Circle(
            circleId: CircleId("my home address"),
            center: LatLng(22.35709078251976, 91.84002824127674),
            radius: 500,
            strokeColor: Colors.amber,
            strokeWidth: 5,
            fillColor: Colors.black38,
            onTap: () {
              print("tapped on circle");
            },
            consumeTapEvents: true,
          ),
          Circle(
            circleId: CircleId("random circle"),
            center: LatLng(22.366739015075346, 91.8412959203124),
            radius: 300,
            strokeColor: Colors.blue,
            strokeWidth: 5,
            fillColor: Colors.blue.shade100,
            onTap: () {
              print("tapped on circle");
            },
            consumeTapEvents: true,
          ),
        },
        polylines: <Polyline>{
          Polyline(
            polylineId: PolylineId("line between two address"),
            points: [
              LatLng(22.362514798064502, 91.83710999786854),
              LatLng(22.363096782725297, 91.84341218322515),
              LatLng(22.362076370080946, 91.84416253119707),
              LatLng(22.36574281337652, 91.83736983686686),
              LatLng(22.362514798064502, 91.83710999786854),
            ],
            color: Colors.orange,
            startCap: Cap.roundCap,
            endCap: Cap.roundCap,
            width: 4,
            onTap: (){},
            consumeTapEvents: true,
          ),
        },
        polygons: <Polygon> {
          Polygon(
            polygonId: PolygonId("random-polygon"),
            points: [
              LatLng(22.38844036620411, 91.85508113354445),
              LatLng(22.386777494895387, 91.85101054608822),
              LatLng(22.38131133191896, 91.85418494045734),
              LatLng(22.379052818832186, 91.85928281396627),
              LatLng(22.383421621174374, 91.86139170080423),
            ],
            fillColor: Colors.red.shade200,
            strokeWidth: 4,
            strokeColor: Colors.blue,
            consumeTapEvents: true,
          ),
        },
      ),
    );
  }
}
