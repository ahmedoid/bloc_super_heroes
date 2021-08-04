import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable(explicitToJson: true)
class Images extends Equatable {
  Images(this.xSmall, this.small, this.medium, this.large);

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  @JsonKey(name: 'xs')
  final String? xSmall;
  @JsonKey(name: 'sm')
  final String? small;
  @JsonKey(name: 'md')
  final String? medium;
  @JsonKey(name: 'lg')
  final String? large;

  Map<String, dynamic> toJson() => _$ImagesToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [xSmall, small, medium, large];
}
