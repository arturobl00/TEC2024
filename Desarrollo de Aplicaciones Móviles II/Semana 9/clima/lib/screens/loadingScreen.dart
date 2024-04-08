import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  getCurrentLocation()async{
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission==LocationPermission.denied || permission==LocationPermission.deniedForever){
      //log('asdas');
      LocationPermission ask =await Geolocator.requestPermission();
      print(ask);
    }
    else{
      Position currentposition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      print("Latitud:" + currentposition.latitude.toString());
      print("Longitud:" + currentposition.longitude.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            getCurrentLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}