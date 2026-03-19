import '../../../model/ride_pref/ride_pref.dart';

abstract class RidePrefRepo {
  int get maxAllowedSeats;
  RidePreference? get selectedPreference;
  List<RidePreference> get preferenceHistory;

  void selectPreference(RidePreference preference);
}
