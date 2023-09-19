// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterResponse _$$_CharacterResponseFromJson(Map<String, dynamic> json) =>
    _$_CharacterResponse(
      info: json['info'] == null
          ? const Info()
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CharacterResponseToJson(
        _$_CharacterResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
