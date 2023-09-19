import '../../app.dart';

abstract interface class LocationsRepository{
  Future<LocationResponse> getAllLocations({required int page});
  Future<String> getSingleLocations({required int id});
}