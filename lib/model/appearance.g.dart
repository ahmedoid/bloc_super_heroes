// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appearance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appearance _$AppearanceFromJson(Map<String, dynamic> json) {
  return Appearance(
    json['gender'] as String?,
    json['race'] as String?,
  );
}

Map<String, dynamic> _$AppearanceToJson(Appearance instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'race': instance.race,
    };
