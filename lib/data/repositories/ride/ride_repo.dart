import '../../../model/ride/ride.dart';
import '../../../model/ride_pref/ride_pref.dart';

abstract class RideRepo {
  Future<List<Ride>> findRides(RidePreference preference);
  Future<Ride?> getRideById(String id);
}
