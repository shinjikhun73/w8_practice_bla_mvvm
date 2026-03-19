import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:blabla/data/repositories/location/location_repo.dart';
import 'package:blabla/data/repositories/location/location_repo_mock.dart';
import 'package:blabla/data/repositories/ride/ride_repo.dart';
import 'package:blabla/data/repositories/ride/ride_repo_mock.dart';
import 'package:blabla/data/repositories/ride_preference/ride_pref_repo.dart';
import 'package:blabla/data/repositories/ride_preference/ride_pref_repo_mock.dart';

import 'main_common.dart';
import 'ui/states/ride_preference_state.dart';

List<SingleChildWidget> get devProviders {
  final ridePreferenceRepository = RidePrefRepoMock();

  return [
    Provider<RidePrefRepo>.value(value: ridePreferenceRepository),
    Provider<RideRepo>.value(value: RideRepoMock()),
    Provider<LocationRepo>.value(value: LocationRepoMock()),
    ChangeNotifierProvider<RidePreferenceState>(
      create: (_) => RidePreferenceState(repository: ridePreferenceRepository),
    ),
  ];
}

void mainDev() {
  runAppWithRepositories(providers: devProviders);
}
