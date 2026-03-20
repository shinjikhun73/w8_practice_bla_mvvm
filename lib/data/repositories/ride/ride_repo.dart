import '../../../model/ride/ride.dart';
import '../../../model/ride_pref/ride_pref.dart';

abstract class RideRepo {
  List<Ride> getRidesFor(RidePreference preference);
  Ride? getRideById(String id);
}
