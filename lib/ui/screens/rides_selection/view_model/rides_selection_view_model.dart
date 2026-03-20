import 'package:flutter/material.dart';
import '../../../../model/ride/ride.dart';
import '../../../../model/ride_pref/ride_pref.dart';
import '../../../../data/repositories/ride/ride_repo.dart';
import '../../../states/ride_preference_state.dart';
import '../../../../utils/animations_util.dart' show AnimationUtils;
import '../widgets/ride_preference_modal.dart';

class RidesSelectionViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferencesState;
  final RideRepo rideRepo;

  RidesSelectionViewModel({
    required this.ridePreferencesState,
    required this.rideRepo,
  }) {
    ridePreferencesState.addListener(notifyListeners);
  }

  @override
  void dispose() {
    ridePreferencesState.removeListener(notifyListeners);
    super.dispose();
  }

  RidePreference? get currentPreference => ridePreferencesState.selectedPreference;

  List<Ride> get matchingRides {
    if (currentPreference == null) return [];
    return rideRepo.getRidesFor(currentPreference!);
  }

  void setPreference(RidePreference preference) {
    ridePreferencesState.selectPreference(preference);
  }

  Future<void> onPreferencePressed(BuildContext context) async {
    RidePreference? newPreference = await Navigator.of(context)
        .push<RidePreference>(
          AnimationUtils.createRightToLeftRoute(
            RidePreferenceModal(initialPreference: currentPreference!),
          ),
        );

    if (newPreference != null) {
      setPreference(newPreference);
    }
  }

  void onBackTap(BuildContext context) {
    Navigator.pop(context);
  }

  void onFilterPressed() {}

  void onRideSelected(Ride ride) {}
}
