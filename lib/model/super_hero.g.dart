// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuperHero _$SuperHeroFromJson(Map<String, dynamic> json) {
  return SuperHero(
    json['id'] as int,
    json['name'] as String,
    json['slug'] as String,
    PowerStats.fromJson(json['powerstats'] as Map<String, dynamic>),
    Appearance.fromJson(json['appearance'] as Map<String, dynamic>),
    Images.fromJson(json['images'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SuperHeroToJson(SuperHero instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'powerstats': instance.powerStats.toJson(),
      'appearance': instance.appearance.toJson(),
      'images': instance.images.toJson(),
    };
