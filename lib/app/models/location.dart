import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
 class Location with _$Location {
   const  Location._();

   const factory Location({
@Default(0) int id,
@Default('') String name,
@Default('') String type,
@Default('') String dimension,
@Default('') String residents,
   }) = _Location;

   factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}