// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewProductResponse _$$NewProductResponseFromJson(Map<String, dynamic> json) =>
    NewProductResponse(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetAllProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewProductResponseToJson(NewProductResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$NewProductResponseImpl _$$NewProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewProductResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : GetAllProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewProductResponseImplToJson(
        _$NewProductResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
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
      json['reviews_average'] as String?,
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
