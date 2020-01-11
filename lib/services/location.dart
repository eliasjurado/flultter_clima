import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Location({this.latitude, this.longitude});

  Future<void> geCurrentLocation() async {
    try {
      Position p = await Geolocator()
          .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = p.latitude;
      longitude = p.longitude;
    } catch (e) {
      print(e);
    }
  }
}
