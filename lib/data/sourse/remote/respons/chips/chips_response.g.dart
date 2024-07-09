// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chips_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChipsResponseImpl _$$ChipsResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChipsResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChipsResponseImplToJson(_$ChipsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['has_child_image'] as bool?,
      json['has_child'] as bool?,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'parent': instance.parent?.toJson(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'has_child_image': instance.hasChildImage,
      'has_child': instance.hasChild,
    };

_$ParentImpl _$$ParentImplFromJson(Map<String, dynamic> json) => _$ParentImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
      json['has_child'] as bool?,
    );

Map<String, dynamic> _$$ParentImplToJson(_$ParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'slug': instance.slug,
      'has_child': instance.hasChild,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['slug'] as String?,
      json['has_child'] as bool?,
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'slug': instance.slug,
      'has_child': instance.hasChild,
    };
