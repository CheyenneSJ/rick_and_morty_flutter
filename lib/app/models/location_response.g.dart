// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationResponse _$$_LocationResponseFromJson(Map<String, dynamic> json) =>
    _$_LocationResponse(
      info: json['info'] == null
          ? const Info()
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LocationResponseToJson(_$_LocationResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
