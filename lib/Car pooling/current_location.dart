import 'package:geolocator/geolocator.dart';
void current_location()async{
  LocationPermission permission = await Geolocator.requestPermission();
  if (permission ==LocationPermission.denied) {
    return;
  }  
  if (permission ==LocationPermission.deniedForever) {
  return;
  }
  Position position =await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );
  double latitude = 10.976036;
  double longitude = 76.225441;
}