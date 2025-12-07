import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GpsHomescreen extends StatefulWidget {
  const GpsHomescreen({super.key});

  @override
  State<GpsHomescreen> createState() => _GpsHomescreenState();
}

class _GpsHomescreenState extends State<GpsHomescreen> {
  Position? _currentPosition;
  Future<void> _getCurrentLocation() async {
    //check location permission
    LocationPermission permissionStatus = await Geolocator.checkPermission();
    if (_isPermissionGranted(permissionStatus)) {
      //location service enabled or not
      bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (isServiceEnabled) {
        //get current location
        _currentPosition = await Geolocator.getCurrentPosition();
        print(_currentPosition);
        setState(() {});
      } else {
        // --> request location service to be enabled
        Geolocator.openLocationSettings();
      }

    } else {
      // --> request permission
      LocationPermission permissionStatus = await Geolocator.requestPermission();
      if (_isPermissionGranted(permissionStatus)) {
        //location service enabled or not
        // --> request location service to be enabled
        //get current location
      }
      _getCurrentLocation();
    }
  }
  Future<void> _listenCurrentLocation() async {
    //check location permission
    LocationPermission permissionStatus = await Geolocator.checkPermission();
    if (_isPermissionGranted(permissionStatus)) {
      //location service enabled or not
      bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (isServiceEnabled) {
        //listen current location
        Geolocator.getPositionStream().listen((position) {
          _currentPosition = position;
          setState(() {});
        });
      } else {
        // --> request location service to be enabled
        Geolocator.openLocationSettings();
      }

    } else {
      // --> request permission
      LocationPermission permissionStatus = await Geolocator.requestPermission();
      if (_isPermissionGranted(permissionStatus)) {
        //location service enabled or not
        // --> request location service to be enabled
        //get current location
      }
      _getCurrentLocation();
    }
  }

  bool _isPermissionGranted(LocationPermission permissionStatus) {
    return permissionStatus == LocationPermission.always ||
        permissionStatus == LocationPermission.whileInUse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GPS Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_currentPosition"),
            TextButton(
              onPressed: _getCurrentLocation,
              child: Text("Current Location"),
            ),
            TextButton(
              onPressed: _listenCurrentLocation,
              child: Text("Listen Current Location"),
            ),
          ],
        ),
      ),
    );
  }
}
