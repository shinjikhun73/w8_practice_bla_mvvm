import '../../../model/ride_pref/ride_pref.dart';
import 'ride_pref_repo.dart';

class RidePrefRepoMock implements RidePrefRepo {
  RidePreference? _selectedPreference;
  final List<RidePreference> _preferenceHistory = [];

  @override
  int get maxAllowedSeats => 8;

  @override
  List<RidePreference> get preferenceHistory => List.unmodifiable(_preferenceHistory);

  @override
  RidePreference? get selectedPreference => _selectedPreference;

  @override
  void selectPreference(RidePreference preference) {
    if (preference != _selectedPreference) {
      _selectedPreference = preference;
      _preferenceHistory.add(preference);
    }
  }
}
