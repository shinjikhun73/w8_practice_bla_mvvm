import 'package:flutter/material.dart';
import '../../../../model/ride_pref/ride_pref.dart';
import '../../../states/ride_preference_state.dart';
import '../../rides_selection/rides_selection_screen.dart';
import '../../../../utils/animations_util.dart';

class HomeViewModel extends ChangeNotifier {
  final RidePreferenceState ridePreferencesState;

  HomeViewModel({required this.ridePreferencesState}) {
    ridePreferencesState.addListener(notifyListeners);
  }

  @override
  void dispose() {
    ridePreferencesState.removeListener(notifyListeners);
    super.dispose();
  }

  RidePreference? get selectedPreference => ridePreferencesState.selectedPreference;

  List<RidePreference> get history => ridePreferencesState.history;

  Future<void> onRidePreferenceSelected(BuildContext context, RidePreference selectedPreference) async {
    ridePreferencesState.selectPreference(selectedPreference);

    await Navigator.of(context).push(
      AnimationUtils.createBottomToTopRoute(const RidesSelectionScreen()),
    );
  }
}
