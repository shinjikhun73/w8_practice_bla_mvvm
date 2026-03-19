import '../../../model/ride_pref/ride_pref.dart';
import '../../../services/ride_prefs_service.dart';
import 'ride_pref_repo.dart';

class RidePrefRepoMock implements RidePrefRepo {
  @override
  Future<List<RidePreference>> getHistory() async =>
      Future.value(RidePrefsService.preferenceHistory);

  @override
  Future<RidePreference?> getSelectedPreference() async =>
      Future.value(RidePrefsService.selectedPreference);

  @override
  Future<void> savePreference(RidePreference pref) async {
    RidePrefsService.selectPreference(pref);
    return Future.value();
  }
}
