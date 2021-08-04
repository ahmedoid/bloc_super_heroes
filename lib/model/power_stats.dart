import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'power_stats.g.dart';

@JsonSerializable(explicitToJson: true)
class PowerStats extends Equatable {
  PowerStats(this.intelligence, this.strength, this.speed, this.durability,
      this.power, this.combat);

  factory PowerStats.fromJson(Map<String, dynamic> json) =>
      _$PowerStatsFromJson(json);

  final int? intelligence;
  final int? strength;
  final int? speed;
  final int? durability;
  final int? power;
  final int? combat;

  Map<String, dynamic> toJson() => _$PowerStatsToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props =>
      [intelligence, strength, speed, durability, power, combat];
}
