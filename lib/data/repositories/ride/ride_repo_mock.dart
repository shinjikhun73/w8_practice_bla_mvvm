import 'package:blabla/data/dummy_data.dart';
import 'package:blabla/data/repositories/ride/ride_repo.dart';
import 'package:blabla/model/ride/ride.dart';
import 'package:blabla/model/ride_pref/ride_pref.dart';

class RideRepoMock implements RideRepo {
  @override
  Future<List<Ride>> findRides(RidePreference preference) async {
    return Future.value(fakeRides);
  }

  @override
  Future<Ride?> getRideById(String id) async {
    try {
      return Future.value(fakeRides.firstWhere((r) => r.toString() == id));
    } catch (e) {
      return Future.value(null);
    }
  }
}
