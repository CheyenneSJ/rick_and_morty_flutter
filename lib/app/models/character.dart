import 'package:freezed_annotation/freezed_annotation.dart';

import '../app.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const Character._();

  const factory Character({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String status,
    @Default('') String species,
    @Default('') String type,
    @Default('') String gender,
    @Default('') String image,
    @Default('') String url,
    @Default(Origin()) Origin origin,
    @Default(CharacterLocation()) CharacterLocation location,
    @Default([]) List<String> episode,
    final DateTime? created,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
