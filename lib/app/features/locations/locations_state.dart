

import 'package:meta/meta.dart';

import '../../app.dart';

@immutable
sealed class LocationsState{}

final class LocationsInitial extends LocationsState{}

final class LocationsLoading extends LocationsState {
  LocationsLoading();
}

final class LocationsSuccess extends LocationsState {
final List<Location> location;

LocationsSuccess({
  required this.location
});

}

final class LocationsError extends LocationsState {
  final String message;

  LocationsError({required this.message});
}
