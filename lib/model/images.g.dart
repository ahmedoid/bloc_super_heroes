// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    json['xs'] as String?,
    json['sm'] as String?,
    json['md'] as String?,
    json['lg'] as String?,
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'xs': instance.xSmall,
      'sm': instance.small,
      'md': instance.medium,
      'lg': instance.large,
    };
