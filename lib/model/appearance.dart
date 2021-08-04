import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'appearance.g.dart';

@JsonSerializable(explicitToJson: true)
class Appearance extends Equatable {
  Appearance(this.gender, this.race);
  factory Appearance.fromJson(Map<String, dynamic> json) =>
      _$AppearanceFromJson(json);
  final String? gender;
  final String? race;

  Map<String, dynamic> toJson() => _$AppearanceToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [gender, race];
}
