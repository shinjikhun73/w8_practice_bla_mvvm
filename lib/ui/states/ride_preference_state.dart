import 'package:flutter/material.dart';
import '../../../model/ride_pref/ride_pref.dart';
import '../../../data/repositories/ride_preference/ride_pref_repo.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePrefRepo repository;

  RidePreferenceState({required this.repository});

  RidePreference? get selectedPreference => repository.selectedPreference;
  List<RidePreference> get history => repository.preferenceHistory.reversed.toList();
  int get maxAllowedSeats => repository.maxAllowedSeats;

  void selectPreference(RidePreference preference) {
    repository.selectPreference(preference);
    notifyListeners();
  }
}
