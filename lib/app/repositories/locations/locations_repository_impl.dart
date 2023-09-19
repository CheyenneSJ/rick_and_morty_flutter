
import 'dart:developer';

import 'package:rick_and_morty_flutter/app/app.dart';

class LocationsRepositoryImpl implements LocationsRepository{
  final CustomDio dio;

  LocationsRepositoryImpl({required this.dio});

  static const _location = 'location';

@override
Future<LocationResponse> getAllLocations({required int page}) async {
  try {
    final response = await dio.unAuth().get(
      _location,
      queryParameters: {'page': page},
    );
    return LocationResponse.fromJson(response.data);
  } on Exception catch (e, s){
    log(e.toString(), error: e, stackTrace: s);
    throw RepositoryException(message: e.toString());
  }
}
@override
Future<String> getSingleLocations({required int id}){
  throw UnimplementedError();
}
}