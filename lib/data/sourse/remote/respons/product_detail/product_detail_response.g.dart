// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailResponseImpl _$$ProductDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailResponseImpl(
      json['success'] as bool?,
      json['message'] as String?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : ProductAllData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailResponseImplToJson(
        _$ProductDetailResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };

_$ProductAllDataImpl _$$ProductAllDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductAllDataImpl(
      json['data'] == null
          ? null
          : ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductAllDataImplToJson(
        _$ProductAllDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['guarantee'] as String?,
      json['catalog'] == null
          ? null
          : Catalog.fromJson(json['catalog'] as Map<String, dynamic>),
      (json['small_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['large_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['availability'] as String?,
      json['brand'] as String?,
      (json['sale_price'] as num?)?.toInt(),
      (json['loan_price'] as num?)?.toInt(),
      json['minimal_loan_price'] == null
          ? null
          : MinimalLoanPrice.fromJson(
              json['minimal_loan_price'] as Map<String, dynamic>),
      json['code'] as String?,
      (json['sale_months'] as List<dynamic>?)
          ?.map((e) => SaleMonths.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['reviews_count'] as num?)?.toInt(),
      json['seo'] == null
          ? null
          : Seo.fromJson(json['seo'] as Map<String, dynamic>),
      (json['main_characters'] as List<dynamic>?)
          ?.map((e) => MainCharacters.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['breadcrumbs'] as List<dynamic>?)
          ?.map((e) => Breadcrumbs.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String?,
      json['overview'] as String?,
      (json['characters'] as List<dynamic>?)
          ?.map((e) => Characters.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['available_stores'] as List<dynamic>?)
          ?.map((e) => AvailableStores.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['accessories'] as List<dynamic>?)
          ?.map((e) => Accessories.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['promotion0012_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guarantee': instance.guarantee,
      'catalog': instance.catalog?.toJson(),
      'small_images': instance.smallImages,
      'large_images': instance.largeImages,
      'availability': instance.availability,
      'brand': instance.brand,
      'sale_price': instance.salePrice,
      'loan_price': instance.loanPrice,
      'minimal_loan_price': instance.minimalLoanPrice?.toJson(),
      'code': instance.code,
      'sale_months': instance.saleMonths?.map((e) => e.toJson()).toList(),
      'reviews_count': instance.reviewsCount,
      'seo': instance.seo?.toJson(),
      'main_characters':
          instance.mainCharacters?.map((e) => e.toJson()).toList(),
      'breadcrumbs': instance.breadcrumbs?.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'overview': instance.overview,
      'characters': instance.characters?.map((e) => e.toJson()).toList(),
      'available_stores':
          instance.availableStores?.map((e) => e.toJson()).toList(),
      'accessories': instance.accessories?.map((e) => e.toJson()).toList(),
      'promotion0012_price': instance.promotion0012Price,
    };

_$CatalogImpl _$$CatalogImplFromJson(Map<String, dynamic> json) =>
    _$CatalogImpl(
      json['name'] as String?,
      (json['min_price'] as num?)?.toInt(),
      (json['max_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CatalogImplToJson(_$CatalogImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
    };

_$MinimalLoanPriceImpl _$$MinimalLoanPriceImplFromJson(
        Map<String, dynamic> json) =>
    _$MinimalLoanPriceImpl(
      (json['min_monthly_price'] as num?)?.toInt(),
      (json['month_number'] as num?)?.toInt(),
      json['min_loan_type'] as String?,
    );

Map<String, dynamic> _$$MinimalLoanPriceImplToJson(
        _$MinimalLoanPriceImpl instance) =>
    <String, dynamic>{
      'min_monthly_price': instance.minMonthlyPrice,
      'month_number': instance.monthNumber,
      'min_loan_type': instance.minLoanType,
    };

_$SaleMonthsImpl _$$SaleMonthsImplFromJson(Map<String, dynamic> json) =>
    _$SaleMonthsImpl(
      (json['id'] as num?)?.toInt(),
      json['key'] as String?,
      json['name'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$$SaleMonthsImplToJson(_$SaleMonthsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'image': instance.image,
    };

_$SeoImpl _$$SeoImplFromJson(Map<String, dynamic> json) => _$SeoImpl(
      json['title'] as String?,
      json['description'] as String?,
      json['keywords'] as String?,
      json['image'] as String?,
      json['script_seo'] as String?,
    );

Map<String, dynamic> _$$SeoImplToJson(_$SeoImpl instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'keywords': instance.keywords,
      'image': instance.image,
      'script_seo': instance.scriptSeo,
    };

_$MainCharactersImpl _$$MainCharactersImplFromJson(Map<String, dynamic> json) =>
    _$MainCharactersImpl(
      json['name'] as String?,
      json['value'] as String?,
    );

Map<String, dynamic> _$$MainCharactersImplToJson(
        _$MainCharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$BreadcrumbsImpl _$$BreadcrumbsImplFromJson(Map<String, dynamic> json) =>
    _$BreadcrumbsImpl(
      json['name'] as String?,
      json['slug'] as String?,
      (json['id'] as num?)?.toInt(),
      json['type'] as String?,
    );

Map<String, dynamic> _$$BreadcrumbsImplToJson(_$BreadcrumbsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'id': instance.id,
      'type': instance.type,
    };

_$CharactersImpl _$$CharactersImplFromJson(Map<String, dynamic> json) =>
    _$CharactersImpl(
      json['name'] as String?,
      (json['characters'] as List<dynamic>?)
          ?.map((e) => Characters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharactersImplToJson(_$CharactersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'characters': instance.characters?.map((e) => e.toJson()).toList(),
    };

_$AvailableStoresImpl _$$AvailableStoresImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableStoresImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['lat'] as String?,
      json['long'] as String?,
      json['phone'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['work_time'] as String?,
    );

Map<String, dynamic> _$$AvailableStoresImplToJson(
        _$AvailableStoresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'long': instance.long,
      'phone': instance.phone,
      'address': instance.address,
      'description': instance.description,
      'work_time': instance.workTime,
    };

_$AccessoriesImpl _$$AccessoriesImplFromJson(Map<String, dynamic> json) =>
    _$AccessoriesImpl(
      json['name'] as String?,
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AccessoriesImplToJson(_$AccessoriesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'products': instance.products?.map((e) => e.toJson()).toList(),
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['image'] as String?,
      json['availability'] as String?,
      json['axiom_monthly_price'] as String?,
      (json['sale_price'] as num?)?.toInt(),
      (json['all_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'availability': instance.availability,
      'axiom_monthly_price': instance.axiomMonthlyPrice,
      'sale_price': instance.salePrice,
      'all_count': instance.allCount,
    };
