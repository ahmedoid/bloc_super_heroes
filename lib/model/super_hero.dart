import 'package:bloc_super_heroes/model/appearance.dart';
import 'package:bloc_super_heroes/model/images.dart';
import 'package:bloc_super_heroes/model/power_stats.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'super_hero.g.dart';

@JsonSerializable(explicitToJson: true)
class SuperHero extends Equatable {
  SuperHero(this.id, this.name, this.slug, this.powerStats, this.appearance,
      this.images);

  factory SuperHero.fromJson(Map<String, dynamic> json) =>
      _$SuperHeroFromJson(json);

  final int id;
  final String name;
  final String slug;
  @JsonKey(name: 'powerstats')
  final PowerStats powerStats;
  final Appearance appearance;
  final Images images;

  Map<String, dynamic> toJson() => _$SuperHeroToJson(this);

  @override
  List<Object?> get props => [id, name, slug];
}
