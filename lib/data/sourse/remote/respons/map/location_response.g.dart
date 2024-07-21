// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationResponseImpl _$$LocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : LocationList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationResponseImplToJson(
        _$LocationResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$LocationListImpl _$$LocationListImplFromJson(Map<String, dynamic> json) =>
    _$LocationListImpl(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationListImplToJson(_$LocationListImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      (json['opened_stores'] as List<dynamic>?)
          ?.map((e) => OpenedStores.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['not_opened_stores'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'opened_stores': instance.openedStores?.map((e) => e.toJson()).toList(),
      'not_opened_stores': instance.notOpenedStores,
    };

_$OpenedStoresImpl _$$OpenedStoresImplFromJson(Map<String, dynamic> json) =>
    _$OpenedStoresImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['long'] as String?,
      json['lat'] as String?,
      json['phone'] as String?,
      json['work_time'] as String?,
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$OpenedStoresImplToJson(_$OpenedStoresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'long': instance.long,
      'lat': instance.lat,
      'phone': instance.phone,
      'work_time': instance.workTime,
      'images': instance.images,
    };
