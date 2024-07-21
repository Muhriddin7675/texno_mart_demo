// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeProductResponseImpl _$$TypeProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TypeProductResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetAllProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeProductResponseImplToJson(
        _$TypeProductResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$GetAllProductDataImpl _$$GetAllProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllProductDataImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllProductDataImplToJson(
        _$GetAllProductDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['availability'] as String?,
      json['axiom_monthly_price'] as String?,
      (json['sale_price'] as num?)?.toInt(),
      json['old_price'] as String?,
      (json['finish_price'] as num?)?.toInt(),
      (json['discount_price'] as num?)?.toInt(),
      (json['reviews_count'] as num?)?.toInt(),
      (json['reviews_average'] as num?)?.toInt(),
      (json['all_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'sale_price': instance.salePrice,
      'old_price': instance.oldPrice,
      'finish_price': instance.finishPrice,
      'discount_price': instance.discountPrice,
      'reviews_count': instance.reviewsCount,
      'reviews_average': instance.reviewsAverage,
      'all_count': instance.allCount,
    };
