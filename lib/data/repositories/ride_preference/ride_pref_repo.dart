import '../../../model/ride_pref/ride_pref.dart';

abstract class RidePrefRepo {
  Future<RidePreference?> getSelectedPreference();
  Future<void> savePreference(RidePreference pref);
  Future<List<RidePreference>> getHistory();
}
