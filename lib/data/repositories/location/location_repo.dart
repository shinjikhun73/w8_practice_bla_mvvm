import '../../../model/ride/locations.dart';

abstract class LocationRepo {
  Future<List<Location>> getLocations();
  Future<List<Location>> searchLocation(String q);
}
