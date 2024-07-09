// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialCategoriesImpl _$$SpecialCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialCategoriesImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetSpecialCategoriesData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecialCategoriesImplToJson(
        _$SpecialCategoriesImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$GetSpecialCategoriesDataImpl _$$GetSpecialCategoriesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSpecialCategoriesDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => GetSpecialCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetSpecialCategoriesDataImplToJson(
        _$GetSpecialCategoriesDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetSpecialCategoriesImpl _$$GetSpecialCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSpecialCategoriesImpl(
      json['title'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$$GetSpecialCategoriesImplToJson(
        _$GetSpecialCategoriesImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'slug': instance.slug,
    };
