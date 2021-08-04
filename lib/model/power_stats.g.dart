// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PowerStats _$PowerStatsFromJson(Map<String, dynamic> json) {
  return PowerStats(
    json['intelligence'] as int?,
    json['strength'] as int?,
    json['speed'] as int?,
    json['durability'] as int?,
    json['power'] as int?,
    json['combat'] as int?,
  );
}

Map<String, dynamic> _$PowerStatsToJson(PowerStats instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };
