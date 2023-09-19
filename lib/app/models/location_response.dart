import 'package:freezed_annotation/freezed_annotation.dart';

import '../app.dart';

part 'location_response.freezed.dart';
part 'location_response.g.dart';


@freezed 
class LocationResponse with _$LocationResponse {
  const LocationResponse._();
  const factory LocationResponse({
    @Default(Info()) Info info,
    @Default([]) List<String> results,

  }) = _LocationResponse;


factory LocationResponse.fromJson(Map<String, dynamic> json) =>
_$LocationResponseFromJson(json);
}



