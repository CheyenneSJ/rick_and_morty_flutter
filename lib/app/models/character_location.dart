import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_location.freezed.dart';
part 'character_location.g.dart';

@freezed
class CharacterLocation with _$CharacterLocation {
  const CharacterLocation._();

  const factory CharacterLocation({
    @Default('') String name,
    @Default('') String url,
  }) = _CharacterLocation;

  factory CharacterLocation.fromJson(Map<String, dynamic> json) => _$CharacterLocationFromJson(json);
}
