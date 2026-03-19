import '../../dummy_data.dart';
import '../../../model/ride/locations.dart';
import 'location_repo.dart';

class LocationRepoMock implements LocationRepo {
  @override
  Future<List<Location>> getLocations() async => Future.value(fakeLocations);

  @override
  Future<List<Location>> searchLocation(String q) async => Future.value(
    fakeLocations
        .where((l) => l.name.toLowerCase().contains(q.toLowerCase()))
        .toList(),
  );
}
