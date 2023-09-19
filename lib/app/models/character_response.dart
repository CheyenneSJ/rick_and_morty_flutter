import 'package:freezed_annotation/freezed_annotation.dart';

import '../app.dart';

part 'character_response.freezed.dart';
part 'character_response.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const CharacterResponse._();

  const factory CharacterResponse({
    @Default(Info()) Info info,
    @Default([]) List<Character> results,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}
