import 'package:blabla/data/repositories/location/location_repo_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repo_mock.dart';
import 'package:blabla/data/repositories/ride_preference/ride_pref_repo_mock.dart';

import 'main.dart';
import 'main_common.dart';

void mainDev() {
  final locationRepo = LocationRepoMock();
  final rideRepo = RideRepoMock();
  final prefRepo = RidePrefRepoMock();

  runAppWithRepositories(
    locationRepository: locationRepo,
    rideRepository: rideRepo,
    ridePreferenceRepository: prefRepo,
    child: const BlaBlaApp(),
  );
}
