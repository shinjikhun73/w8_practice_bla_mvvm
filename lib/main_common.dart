import 'package:blabla/data/repositories/location/location_repo.dart';
import 'package:blabla/data/repositories/ride/ride_repo.dart';
import 'package:blabla/data/repositories/ride_preference/ride_pref_repo.dart';
import 'package:flutter/widgets.dart';


class RepositoryProvider extends InheritedWidget {
  final LocationRepo locationRepository;
  final RideRepo rideRepository;
  final RidePrefRepo ridePreferenceRepository;

  const RepositoryProvider({
    required this.locationRepository,
    required this.rideRepository,
    required this.ridePreferenceRepository,
    required super.child,
    super.key,
  });

  static RepositoryProvider of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<RepositoryProvider>();
    assert(provider != null, 'No RepositoryProvider found in context');
    return provider!;
  }

  @override
  bool updateShouldNotify(covariant RepositoryProvider oldWidget) => false;
}

void runAppWithRepositories({
  required LocationRepo locationRepository,
  required RideRepo rideRepository,
  required RidePrefRepo ridePreferenceRepository,
  required Widget child,
}) {
  runApp(RepositoryProvider(
    locationRepository: locationRepository,
    rideRepository: rideRepository,
    ridePreferenceRepository: ridePreferenceRepository,
    child: child,
  ));
}