import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride/ride_repo.dart';
import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RideRepoMock implements RideRepo {
  @override
  List<Ride> getRidesFor(RidePreference preference) {
    return fakeRides.where((ride) =>
        ride.departureLocation == preference.departure &&
        ride.arrivalLocation == preference.arrival).toList();
  }

  @override
  Ride? getRideById(String id) {
    try {
      return fakeRides.firstWhere((r) => r.toString() == id);
    } catch (e) {
      return null;
    }
  }
}
