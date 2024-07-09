// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailResponse _$ProductDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  ProductAllData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseCopyWith<$Res> {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value,
          $Res Function(ProductDetailResponse) then) =
      _$ProductDetailResponseCopyWithImpl<$Res, ProductDetailResponse>;
  @useResult
  $Res call({bool? success, String? message, int? code, ProductAllData? data});

  $ProductAllDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res,
        $Val extends ProductDetailResponse>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductAllData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductAllDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductAllDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailResponseImplCopyWith<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  factory _$$ProductDetailResponseImplCopyWith(
          _$ProductDetailResponseImpl value,
          $Res Function(_$ProductDetailResponseImpl) then) =
      __$$ProductDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, ProductAllData? data});

  @override
  $ProductAllDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductDetailResponseImplCopyWithImpl<$Res>
    extends _$ProductDetailResponseCopyWithImpl<$Res,
        _$ProductDetailResponseImpl>
    implements _$$ProductDetailResponseImplCopyWith<$Res> {
  __$$ProductDetailResponseImplCopyWithImpl(_$ProductDetailResponseImpl _value,
      $Res Function(_$ProductDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProductDetailResponseImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductAllData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductDetailResponseImpl implements _ProductDetailResponse {
  const _$ProductDetailResponseImpl(
      this.success, this.message, this.code, this.data);

  factory _$ProductDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final ProductAllData? data;

  @override
  String toString() {
    return 'ProductDetailResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => __$$ProductDetailResponseImplCopyWithImpl<
          _$ProductDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailResponse implements ProductDetailResponse {
  const factory _ProductDetailResponse(
      final bool? success,
      final String? message,
      final int? code,
      final ProductAllData? data) = _$ProductDetailResponseImpl;

  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ProductDetailResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  ProductAllData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductAllData _$ProductAllDataFromJson(Map<String, dynamic> json) {
  return _ProductAllData.fromJson(json);
}

/// @nodoc
mixin _$ProductAllData {
  ProductData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAllDataCopyWith<ProductAllData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAllDataCopyWith<$Res> {
  factory $ProductAllDataCopyWith(
          ProductAllData value, $Res Function(ProductAllData) then) =
      _$ProductAllDataCopyWithImpl<$Res, ProductAllData>;
  @useResult
  $Res call({ProductData? data});

  $ProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductAllDataCopyWithImpl<$Res, $Val extends ProductAllData>
    implements $ProductAllDataCopyWith<$Res> {
  _$ProductAllDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductAllDataImplCopyWith<$Res>
    implements $ProductAllDataCopyWith<$Res> {
  factory _$$ProductAllDataImplCopyWith(_$ProductAllDataImpl value,
          $Res Function(_$ProductAllDataImpl) then) =
      __$$ProductAllDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductData? data});

  @override
  $ProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductAllDataImplCopyWithImpl<$Res>
    extends _$ProductAllDataCopyWithImpl<$Res, _$ProductAllDataImpl>
    implements _$$ProductAllDataImplCopyWith<$Res> {
  __$$ProductAllDataImplCopyWithImpl(
      _$ProductAllDataImpl _value, $Res Function(_$ProductAllDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductAllDataImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductAllDataImpl implements _ProductAllData {
  const _$ProductAllDataImpl(this.data);

  factory _$ProductAllDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAllDataImplFromJson(json);

  @override
  final ProductData? data;

  @override
  String toString() {
    return 'ProductAllData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAllDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAllDataImplCopyWith<_$ProductAllDataImpl> get copyWith =>
      __$$ProductAllDataImplCopyWithImpl<_$ProductAllDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAllDataImplToJson(
      this,
    );
  }
}

abstract class _ProductAllData implements ProductAllData {
  const factory _ProductAllData(final ProductData? data) = _$ProductAllDataImpl;

  factory _ProductAllData.fromJson(Map<String, dynamic> json) =
      _$ProductAllDataImpl.fromJson;

  @override
  ProductData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductAllDataImplCopyWith<_$ProductAllDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get guarantee => throw _privateConstructorUsedError;
  Catalog? get catalog => throw _privateConstructorUsedError;
  List<String>? get smallImages => throw _privateConstructorUsedError;
  List<String>? get largeImages => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  int? get loanPrice => throw _privateConstructorUsedError;
  MinimalLoanPrice? get minimalLoanPrice => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  List<SaleMonths>? get saleMonths => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  Seo? get seo => throw _privateConstructorUsedError;
  List<MainCharacters>? get mainCharacters =>
      throw _privateConstructorUsedError;
  List<Breadcrumbs>? get breadcrumbs => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  List<Characters>? get characters => throw _privateConstructorUsedError;
  List<AvailableStores>? get availableStores =>
      throw _privateConstructorUsedError;
  List<Accessories>? get accessories => throw _privateConstructorUsedError;
  int? get promotion0012Price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? guarantee,
      Catalog? catalog,
      List<String>? smallImages,
      List<String>? largeImages,
      String? availability,
      String? brand,
      int? salePrice,
      int? loanPrice,
      MinimalLoanPrice? minimalLoanPrice,
      String? code,
      List<SaleMonths>? saleMonths,
      int? reviewsCount,
      Seo? seo,
      List<MainCharacters>? mainCharacters,
      List<Breadcrumbs>? breadcrumbs,
      String? description,
      String? overview,
      List<Characters>? characters,
      List<AvailableStores>? availableStores,
      List<Accessories>? accessories,
      int? promotion0012Price});

  $CatalogCopyWith<$Res>? get catalog;
  $MinimalLoanPriceCopyWith<$Res>? get minimalLoanPrice;
  $SeoCopyWith<$Res>? get seo;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? guarantee = freezed,
    Object? catalog = freezed,
    Object? smallImages = freezed,
    Object? largeImages = freezed,
    Object? availability = freezed,
    Object? brand = freezed,
    Object? salePrice = freezed,
    Object? loanPrice = freezed,
    Object? minimalLoanPrice = freezed,
    Object? code = freezed,
    Object? saleMonths = freezed,
    Object? reviewsCount = freezed,
    Object? seo = freezed,
    Object? mainCharacters = freezed,
    Object? breadcrumbs = freezed,
    Object? description = freezed,
    Object? overview = freezed,
    Object? characters = freezed,
    Object? availableStores = freezed,
    Object? accessories = freezed,
    Object? promotion0012Price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guarantee: freezed == guarantee
          ? _value.guarantee
          : guarantee // ignore: cast_nullable_to_non_nullable
              as String?,
      catalog: freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog?,
      smallImages: freezed == smallImages
          ? _value.smallImages
          : smallImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      largeImages: freezed == largeImages
          ? _value.largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      loanPrice: freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      minimalLoanPrice: freezed == minimalLoanPrice
          ? _value.minimalLoanPrice
          : minimalLoanPrice // ignore: cast_nullable_to_non_nullable
              as MinimalLoanPrice?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonths>?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      seo: freezed == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as Seo?,
      mainCharacters: freezed == mainCharacters
          ? _value.mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacters>?,
      breadcrumbs: freezed == breadcrumbs
          ? _value.breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<Breadcrumbs>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Characters>?,
      availableStores: freezed == availableStores
          ? _value.availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<AvailableStores>?,
      accessories: freezed == accessories
          ? _value.accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<Accessories>?,
      promotion0012Price: freezed == promotion0012Price
          ? _value.promotion0012Price
          : promotion0012Price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatalogCopyWith<$Res>? get catalog {
    if (_value.catalog == null) {
      return null;
    }

    return $CatalogCopyWith<$Res>(_value.catalog!, (value) {
      return _then(_value.copyWith(catalog: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MinimalLoanPriceCopyWith<$Res>? get minimalLoanPrice {
    if (_value.minimalLoanPrice == null) {
      return null;
    }

    return $MinimalLoanPriceCopyWith<$Res>(_value.minimalLoanPrice!, (value) {
      return _then(_value.copyWith(minimalLoanPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeoCopyWith<$Res>? get seo {
    if (_value.seo == null) {
      return null;
    }

    return $SeoCopyWith<$Res>(_value.seo!, (value) {
      return _then(_value.copyWith(seo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? guarantee,
      Catalog? catalog,
      List<String>? smallImages,
      List<String>? largeImages,
      String? availability,
      String? brand,
      int? salePrice,
      int? loanPrice,
      MinimalLoanPrice? minimalLoanPrice,
      String? code,
      List<SaleMonths>? saleMonths,
      int? reviewsCount,
      Seo? seo,
      List<MainCharacters>? mainCharacters,
      List<Breadcrumbs>? breadcrumbs,
      String? description,
      String? overview,
      List<Characters>? characters,
      List<AvailableStores>? availableStores,
      List<Accessories>? accessories,
      int? promotion0012Price});

  @override
  $CatalogCopyWith<$Res>? get catalog;
  @override
  $MinimalLoanPriceCopyWith<$Res>? get minimalLoanPrice;
  @override
  $SeoCopyWith<$Res>? get seo;
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? guarantee = freezed,
    Object? catalog = freezed,
    Object? smallImages = freezed,
    Object? largeImages = freezed,
    Object? availability = freezed,
    Object? brand = freezed,
    Object? salePrice = freezed,
    Object? loanPrice = freezed,
    Object? minimalLoanPrice = freezed,
    Object? code = freezed,
    Object? saleMonths = freezed,
    Object? reviewsCount = freezed,
    Object? seo = freezed,
    Object? mainCharacters = freezed,
    Object? breadcrumbs = freezed,
    Object? description = freezed,
    Object? overview = freezed,
    Object? characters = freezed,
    Object? availableStores = freezed,
    Object? accessories = freezed,
    Object? promotion0012Price = freezed,
  }) {
    return _then(_$ProductDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == guarantee
          ? _value.guarantee
          : guarantee // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as Catalog?,
      freezed == smallImages
          ? _value._smallImages
          : smallImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == largeImages
          ? _value._largeImages
          : largeImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == loanPrice
          ? _value.loanPrice
          : loanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == minimalLoanPrice
          ? _value.minimalLoanPrice
          : minimalLoanPrice // ignore: cast_nullable_to_non_nullable
              as MinimalLoanPrice?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<SaleMonths>?,
      freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == seo
          ? _value.seo
          : seo // ignore: cast_nullable_to_non_nullable
              as Seo?,
      freezed == mainCharacters
          ? _value._mainCharacters
          : mainCharacters // ignore: cast_nullable_to_non_nullable
              as List<MainCharacters>?,
      freezed == breadcrumbs
          ? _value._breadcrumbs
          : breadcrumbs // ignore: cast_nullable_to_non_nullable
              as List<Breadcrumbs>?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Characters>?,
      freezed == availableStores
          ? _value._availableStores
          : availableStores // ignore: cast_nullable_to_non_nullable
              as List<AvailableStores>?,
      freezed == accessories
          ? _value._accessories
          : accessories // ignore: cast_nullable_to_non_nullable
              as List<Accessories>?,
      freezed == promotion0012Price
          ? _value.promotion0012Price
          : promotion0012Price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      this.id,
      this.name,
      this.guarantee,
      this.catalog,
      final List<String>? smallImages,
      final List<String>? largeImages,
      this.availability,
      this.brand,
      this.salePrice,
      this.loanPrice,
      this.minimalLoanPrice,
      this.code,
      final List<SaleMonths>? saleMonths,
      this.reviewsCount,
      this.seo,
      final List<MainCharacters>? mainCharacters,
      final List<Breadcrumbs>? breadcrumbs,
      this.description,
      this.overview,
      final List<Characters>? characters,
      final List<AvailableStores>? availableStores,
      final List<Accessories>? accessories,
      this.promotion0012Price)
      : _smallImages = smallImages,
        _largeImages = largeImages,
        _saleMonths = saleMonths,
        _mainCharacters = mainCharacters,
        _breadcrumbs = breadcrumbs,
        _characters = characters,
        _availableStores = availableStores,
        _accessories = accessories;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? guarantee;
  @override
  final Catalog? catalog;
  final List<String>? _smallImages;
  @override
  List<String>? get smallImages {
    final value = _smallImages;
    if (value == null) return null;
    if (_smallImages is EqualUnmodifiableListView) return _smallImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _largeImages;
  @override
  List<String>? get largeImages {
    final value = _largeImages;
    if (value == null) return null;
    if (_largeImages is EqualUnmodifiableListView) return _largeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? availability;
  @override
  final String? brand;
  @override
  final int? salePrice;
  @override
  final int? loanPrice;
  @override
  final MinimalLoanPrice? minimalLoanPrice;
  @override
  final String? code;
  final List<SaleMonths>? _saleMonths;
  @override
  List<SaleMonths>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? reviewsCount;
  @override
  final Seo? seo;
  final List<MainCharacters>? _mainCharacters;
  @override
  List<MainCharacters>? get mainCharacters {
    final value = _mainCharacters;
    if (value == null) return null;
    if (_mainCharacters is EqualUnmodifiableListView) return _mainCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Breadcrumbs>? _breadcrumbs;
  @override
  List<Breadcrumbs>? get breadcrumbs {
    final value = _breadcrumbs;
    if (value == null) return null;
    if (_breadcrumbs is EqualUnmodifiableListView) return _breadcrumbs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final String? overview;
  final List<Characters>? _characters;
  @override
  List<Characters>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AvailableStores>? _availableStores;
  @override
  List<AvailableStores>? get availableStores {
    final value = _availableStores;
    if (value == null) return null;
    if (_availableStores is EqualUnmodifiableListView) return _availableStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Accessories>? _accessories;
  @override
  List<Accessories>? get accessories {
    final value = _accessories;
    if (value == null) return null;
    if (_accessories is EqualUnmodifiableListView) return _accessories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? promotion0012Price;

  @override
  String toString() {
    return 'ProductData(id: $id, name: $name, guarantee: $guarantee, catalog: $catalog, smallImages: $smallImages, largeImages: $largeImages, availability: $availability, brand: $brand, salePrice: $salePrice, loanPrice: $loanPrice, minimalLoanPrice: $minimalLoanPrice, code: $code, saleMonths: $saleMonths, reviewsCount: $reviewsCount, seo: $seo, mainCharacters: $mainCharacters, breadcrumbs: $breadcrumbs, description: $description, overview: $overview, characters: $characters, availableStores: $availableStores, accessories: $accessories, promotion0012Price: $promotion0012Price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.guarantee, guarantee) ||
                other.guarantee == guarantee) &&
            (identical(other.catalog, catalog) || other.catalog == catalog) &&
            const DeepCollectionEquality()
                .equals(other._smallImages, _smallImages) &&
            const DeepCollectionEquality()
                .equals(other._largeImages, _largeImages) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.loanPrice, loanPrice) ||
                other.loanPrice == loanPrice) &&
            (identical(other.minimalLoanPrice, minimalLoanPrice) ||
                other.minimalLoanPrice == minimalLoanPrice) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.seo, seo) || other.seo == seo) &&
            const DeepCollectionEquality()
                .equals(other._mainCharacters, _mainCharacters) &&
            const DeepCollectionEquality()
                .equals(other._breadcrumbs, _breadcrumbs) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._availableStores, _availableStores) &&
            const DeepCollectionEquality()
                .equals(other._accessories, _accessories) &&
            (identical(other.promotion0012Price, promotion0012Price) ||
                other.promotion0012Price == promotion0012Price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        guarantee,
        catalog,
        const DeepCollectionEquality().hash(_smallImages),
        const DeepCollectionEquality().hash(_largeImages),
        availability,
        brand,
        salePrice,
        loanPrice,
        minimalLoanPrice,
        code,
        const DeepCollectionEquality().hash(_saleMonths),
        reviewsCount,
        seo,
        const DeepCollectionEquality().hash(_mainCharacters),
        const DeepCollectionEquality().hash(_breadcrumbs),
        description,
        overview,
        const DeepCollectionEquality().hash(_characters),
        const DeepCollectionEquality().hash(_availableStores),
        const DeepCollectionEquality().hash(_accessories),
        promotion0012Price
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      final int? id,
      final String? name,
      final String? guarantee,
      final Catalog? catalog,
      final List<String>? smallImages,
      final List<String>? largeImages,
      final String? availability,
      final String? brand,
      final int? salePrice,
      final int? loanPrice,
      final MinimalLoanPrice? minimalLoanPrice,
      final String? code,
      final List<SaleMonths>? saleMonths,
      final int? reviewsCount,
      final Seo? seo,
      final List<MainCharacters>? mainCharacters,
      final List<Breadcrumbs>? breadcrumbs,
      final String? description,
      final String? overview,
      final List<Characters>? characters,
      final List<AvailableStores>? availableStores,
      final List<Accessories>? accessories,
      final int? promotion0012Price) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get guarantee;
  @override
  Catalog? get catalog;
  @override
  List<String>? get smallImages;
  @override
  List<String>? get largeImages;
  @override
  String? get availability;
  @override
  String? get brand;
  @override
  int? get salePrice;
  @override
  int? get loanPrice;
  @override
  MinimalLoanPrice? get minimalLoanPrice;
  @override
  String? get code;
  @override
  List<SaleMonths>? get saleMonths;
  @override
  int? get reviewsCount;
  @override
  Seo? get seo;
  @override
  List<MainCharacters>? get mainCharacters;
  @override
  List<Breadcrumbs>? get breadcrumbs;
  @override
  String? get description;
  @override
  String? get overview;
  @override
  List<Characters>? get characters;
  @override
  List<AvailableStores>? get availableStores;
  @override
  List<Accessories>? get accessories;
  @override
  int? get promotion0012Price;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Catalog _$CatalogFromJson(Map<String, dynamic> json) {
  return _Catalog.fromJson(json);
}

/// @nodoc
mixin _$Catalog {
  String? get name => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogCopyWith<Catalog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCopyWith<$Res> {
  factory $CatalogCopyWith(Catalog value, $Res Function(Catalog) then) =
      _$CatalogCopyWithImpl<$Res, Catalog>;
  @useResult
  $Res call({String? name, int? minPrice, int? maxPrice});
}

/// @nodoc
class _$CatalogCopyWithImpl<$Res, $Val extends Catalog>
    implements $CatalogCopyWith<$Res> {
  _$CatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogImplCopyWith<$Res> implements $CatalogCopyWith<$Res> {
  factory _$$CatalogImplCopyWith(
          _$CatalogImpl value, $Res Function(_$CatalogImpl) then) =
      __$$CatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? minPrice, int? maxPrice});
}

/// @nodoc
class __$$CatalogImplCopyWithImpl<$Res>
    extends _$CatalogCopyWithImpl<$Res, _$CatalogImpl>
    implements _$$CatalogImplCopyWith<$Res> {
  __$$CatalogImplCopyWithImpl(
      _$CatalogImpl _value, $Res Function(_$CatalogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_$CatalogImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$CatalogImpl implements _Catalog {
  const _$CatalogImpl(this.name, this.minPrice, this.maxPrice);

  factory _$CatalogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogImplFromJson(json);

  @override
  final String? name;
  @override
  final int? minPrice;
  @override
  final int? maxPrice;

  @override
  String toString() {
    return 'Catalog(name: $name, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      __$$CatalogImplCopyWithImpl<_$CatalogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogImplToJson(
      this,
    );
  }
}

abstract class _Catalog implements Catalog {
  const factory _Catalog(
          final String? name, final int? minPrice, final int? maxPrice) =
      _$CatalogImpl;

  factory _Catalog.fromJson(Map<String, dynamic> json) = _$CatalogImpl.fromJson;

  @override
  String? get name;
  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  @JsonKey(ignore: true)
  _$$CatalogImplCopyWith<_$CatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MinimalLoanPrice _$MinimalLoanPriceFromJson(Map<String, dynamic> json) {
  return _MinimalLoanPrice.fromJson(json);
}

/// @nodoc
mixin _$MinimalLoanPrice {
  int? get minMonthlyPrice => throw _privateConstructorUsedError;
  int? get monthNumber => throw _privateConstructorUsedError;
  String? get minLoanType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinimalLoanPriceCopyWith<MinimalLoanPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimalLoanPriceCopyWith<$Res> {
  factory $MinimalLoanPriceCopyWith(
          MinimalLoanPrice value, $Res Function(MinimalLoanPrice) then) =
      _$MinimalLoanPriceCopyWithImpl<$Res, MinimalLoanPrice>;
  @useResult
  $Res call({int? minMonthlyPrice, int? monthNumber, String? minLoanType});
}

/// @nodoc
class _$MinimalLoanPriceCopyWithImpl<$Res, $Val extends MinimalLoanPrice>
    implements $MinimalLoanPriceCopyWith<$Res> {
  _$MinimalLoanPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minMonthlyPrice = freezed,
    Object? monthNumber = freezed,
    Object? minLoanType = freezed,
  }) {
    return _then(_value.copyWith(
      minMonthlyPrice: freezed == minMonthlyPrice
          ? _value.minMonthlyPrice
          : minMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      monthNumber: freezed == monthNumber
          ? _value.monthNumber
          : monthNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      minLoanType: freezed == minLoanType
          ? _value.minLoanType
          : minLoanType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinimalLoanPriceImplCopyWith<$Res>
    implements $MinimalLoanPriceCopyWith<$Res> {
  factory _$$MinimalLoanPriceImplCopyWith(_$MinimalLoanPriceImpl value,
          $Res Function(_$MinimalLoanPriceImpl) then) =
      __$$MinimalLoanPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? minMonthlyPrice, int? monthNumber, String? minLoanType});
}

/// @nodoc
class __$$MinimalLoanPriceImplCopyWithImpl<$Res>
    extends _$MinimalLoanPriceCopyWithImpl<$Res, _$MinimalLoanPriceImpl>
    implements _$$MinimalLoanPriceImplCopyWith<$Res> {
  __$$MinimalLoanPriceImplCopyWithImpl(_$MinimalLoanPriceImpl _value,
      $Res Function(_$MinimalLoanPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minMonthlyPrice = freezed,
    Object? monthNumber = freezed,
    Object? minLoanType = freezed,
  }) {
    return _then(_$MinimalLoanPriceImpl(
      freezed == minMonthlyPrice
          ? _value.minMonthlyPrice
          : minMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == monthNumber
          ? _value.monthNumber
          : monthNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == minLoanType
          ? _value.minLoanType
          : minLoanType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$MinimalLoanPriceImpl implements _MinimalLoanPrice {
  const _$MinimalLoanPriceImpl(
      this.minMonthlyPrice, this.monthNumber, this.minLoanType);

  factory _$MinimalLoanPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinimalLoanPriceImplFromJson(json);

  @override
  final int? minMonthlyPrice;
  @override
  final int? monthNumber;
  @override
  final String? minLoanType;

  @override
  String toString() {
    return 'MinimalLoanPrice(minMonthlyPrice: $minMonthlyPrice, monthNumber: $monthNumber, minLoanType: $minLoanType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinimalLoanPriceImpl &&
            (identical(other.minMonthlyPrice, minMonthlyPrice) ||
                other.minMonthlyPrice == minMonthlyPrice) &&
            (identical(other.monthNumber, monthNumber) ||
                other.monthNumber == monthNumber) &&
            (identical(other.minLoanType, minLoanType) ||
                other.minLoanType == minLoanType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minMonthlyPrice, monthNumber, minLoanType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinimalLoanPriceImplCopyWith<_$MinimalLoanPriceImpl> get copyWith =>
      __$$MinimalLoanPriceImplCopyWithImpl<_$MinimalLoanPriceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinimalLoanPriceImplToJson(
      this,
    );
  }
}

abstract class _MinimalLoanPrice implements MinimalLoanPrice {
  const factory _MinimalLoanPrice(
      final int? minMonthlyPrice,
      final int? monthNumber,
      final String? minLoanType) = _$MinimalLoanPriceImpl;

  factory _MinimalLoanPrice.fromJson(Map<String, dynamic> json) =
      _$MinimalLoanPriceImpl.fromJson;

  @override
  int? get minMonthlyPrice;
  @override
  int? get monthNumber;
  @override
  String? get minLoanType;
  @override
  @JsonKey(ignore: true)
  _$$MinimalLoanPriceImplCopyWith<_$MinimalLoanPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleMonths _$SaleMonthsFromJson(Map<String, dynamic> json) {
  return _SaleMonths.fromJson(json);
}

/// @nodoc
mixin _$SaleMonths {
  int? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleMonthsCopyWith<SaleMonths> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleMonthsCopyWith<$Res> {
  factory $SaleMonthsCopyWith(
          SaleMonths value, $Res Function(SaleMonths) then) =
      _$SaleMonthsCopyWithImpl<$Res, SaleMonths>;
  @useResult
  $Res call({int? id, String? key, String? name, String? image});
}

/// @nodoc
class _$SaleMonthsCopyWithImpl<$Res, $Val extends SaleMonths>
    implements $SaleMonthsCopyWith<$Res> {
  _$SaleMonthsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleMonthsImplCopyWith<$Res>
    implements $SaleMonthsCopyWith<$Res> {
  factory _$$SaleMonthsImplCopyWith(
          _$SaleMonthsImpl value, $Res Function(_$SaleMonthsImpl) then) =
      __$$SaleMonthsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? key, String? name, String? image});
}

/// @nodoc
class __$$SaleMonthsImplCopyWithImpl<$Res>
    extends _$SaleMonthsCopyWithImpl<$Res, _$SaleMonthsImpl>
    implements _$$SaleMonthsImplCopyWith<$Res> {
  __$$SaleMonthsImplCopyWithImpl(
      _$SaleMonthsImpl _value, $Res Function(_$SaleMonthsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SaleMonthsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SaleMonthsImpl implements _SaleMonths {
  const _$SaleMonthsImpl(this.id, this.key, this.name, this.image);

  factory _$SaleMonthsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleMonthsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? key;
  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'SaleMonths(id: $id, key: $key, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleMonthsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleMonthsImplCopyWith<_$SaleMonthsImpl> get copyWith =>
      __$$SaleMonthsImplCopyWithImpl<_$SaleMonthsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleMonthsImplToJson(
      this,
    );
  }
}

abstract class _SaleMonths implements SaleMonths {
  const factory _SaleMonths(final int? id, final String? key,
      final String? name, final String? image) = _$SaleMonthsImpl;

  factory _SaleMonths.fromJson(Map<String, dynamic> json) =
      _$SaleMonthsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get key;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SaleMonthsImplCopyWith<_$SaleMonthsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Seo _$SeoFromJson(Map<String, dynamic> json) {
  return _Seo.fromJson(json);
}

/// @nodoc
mixin _$Seo {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get keywords => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get scriptSeo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeoCopyWith<Seo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeoCopyWith<$Res> {
  factory $SeoCopyWith(Seo value, $Res Function(Seo) then) =
      _$SeoCopyWithImpl<$Res, Seo>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? keywords,
      String? image,
      String? scriptSeo});
}

/// @nodoc
class _$SeoCopyWithImpl<$Res, $Val extends Seo> implements $SeoCopyWith<$Res> {
  _$SeoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
    Object? image = freezed,
    Object? scriptSeo = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptSeo: freezed == scriptSeo
          ? _value.scriptSeo
          : scriptSeo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeoImplCopyWith<$Res> implements $SeoCopyWith<$Res> {
  factory _$$SeoImplCopyWith(_$SeoImpl value, $Res Function(_$SeoImpl) then) =
      __$$SeoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? keywords,
      String? image,
      String? scriptSeo});
}

/// @nodoc
class __$$SeoImplCopyWithImpl<$Res> extends _$SeoCopyWithImpl<$Res, _$SeoImpl>
    implements _$$SeoImplCopyWith<$Res> {
  __$$SeoImplCopyWithImpl(_$SeoImpl _value, $Res Function(_$SeoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? keywords = freezed,
    Object? image = freezed,
    Object? scriptSeo = freezed,
  }) {
    return _then(_$SeoImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == scriptSeo
          ? _value.scriptSeo
          : scriptSeo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SeoImpl implements _Seo {
  const _$SeoImpl(
      this.title, this.description, this.keywords, this.image, this.scriptSeo);

  factory _$SeoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeoImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? keywords;
  @override
  final String? image;
  @override
  final String? scriptSeo;

  @override
  String toString() {
    return 'Seo(title: $title, description: $description, keywords: $keywords, image: $image, scriptSeo: $scriptSeo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.scriptSeo, scriptSeo) ||
                other.scriptSeo == scriptSeo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, keywords, image, scriptSeo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeoImplCopyWith<_$SeoImpl> get copyWith =>
      __$$SeoImplCopyWithImpl<_$SeoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeoImplToJson(
      this,
    );
  }
}

abstract class _Seo implements Seo {
  const factory _Seo(
      final String? title,
      final String? description,
      final String? keywords,
      final String? image,
      final String? scriptSeo) = _$SeoImpl;

  factory _Seo.fromJson(Map<String, dynamic> json) = _$SeoImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get keywords;
  @override
  String? get image;
  @override
  String? get scriptSeo;
  @override
  @JsonKey(ignore: true)
  _$$SeoImplCopyWith<_$SeoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCharacters _$MainCharactersFromJson(Map<String, dynamic> json) {
  return _MainCharacters.fromJson(json);
}

/// @nodoc
mixin _$MainCharacters {
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCharactersCopyWith<MainCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCharactersCopyWith<$Res> {
  factory $MainCharactersCopyWith(
          MainCharacters value, $Res Function(MainCharacters) then) =
      _$MainCharactersCopyWithImpl<$Res, MainCharacters>;
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class _$MainCharactersCopyWithImpl<$Res, $Val extends MainCharacters>
    implements $MainCharactersCopyWith<$Res> {
  _$MainCharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainCharactersImplCopyWith<$Res>
    implements $MainCharactersCopyWith<$Res> {
  factory _$$MainCharactersImplCopyWith(_$MainCharactersImpl value,
          $Res Function(_$MainCharactersImpl) then) =
      __$$MainCharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? value});
}

/// @nodoc
class __$$MainCharactersImplCopyWithImpl<$Res>
    extends _$MainCharactersCopyWithImpl<$Res, _$MainCharactersImpl>
    implements _$$MainCharactersImplCopyWith<$Res> {
  __$$MainCharactersImplCopyWithImpl(
      _$MainCharactersImpl _value, $Res Function(_$MainCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$MainCharactersImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$MainCharactersImpl implements _MainCharacters {
  const _$MainCharactersImpl(this.name, this.value);

  factory _$MainCharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCharactersImplFromJson(json);

  @override
  final String? name;
  @override
  final String? value;

  @override
  String toString() {
    return 'MainCharacters(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCharactersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCharactersImplCopyWith<_$MainCharactersImpl> get copyWith =>
      __$$MainCharactersImplCopyWithImpl<_$MainCharactersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCharactersImplToJson(
      this,
    );
  }
}

abstract class _MainCharacters implements MainCharacters {
  const factory _MainCharacters(final String? name, final String? value) =
      _$MainCharactersImpl;

  factory _MainCharacters.fromJson(Map<String, dynamic> json) =
      _$MainCharactersImpl.fromJson;

  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$MainCharactersImplCopyWith<_$MainCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Breadcrumbs _$BreadcrumbsFromJson(Map<String, dynamic> json) {
  return _Breadcrumbs.fromJson(json);
}

/// @nodoc
mixin _$Breadcrumbs {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreadcrumbsCopyWith<Breadcrumbs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreadcrumbsCopyWith<$Res> {
  factory $BreadcrumbsCopyWith(
          Breadcrumbs value, $Res Function(Breadcrumbs) then) =
      _$BreadcrumbsCopyWithImpl<$Res, Breadcrumbs>;
  @useResult
  $Res call({String? name, String? slug, int? id, String? type});
}

/// @nodoc
class _$BreadcrumbsCopyWithImpl<$Res, $Val extends Breadcrumbs>
    implements $BreadcrumbsCopyWith<$Res> {
  _$BreadcrumbsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreadcrumbsImplCopyWith<$Res>
    implements $BreadcrumbsCopyWith<$Res> {
  factory _$$BreadcrumbsImplCopyWith(
          _$BreadcrumbsImpl value, $Res Function(_$BreadcrumbsImpl) then) =
      __$$BreadcrumbsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? slug, int? id, String? type});
}

/// @nodoc
class __$$BreadcrumbsImplCopyWithImpl<$Res>
    extends _$BreadcrumbsCopyWithImpl<$Res, _$BreadcrumbsImpl>
    implements _$$BreadcrumbsImplCopyWith<$Res> {
  __$$BreadcrumbsImplCopyWithImpl(
      _$BreadcrumbsImpl _value, $Res Function(_$BreadcrumbsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_$BreadcrumbsImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$BreadcrumbsImpl implements _Breadcrumbs {
  const _$BreadcrumbsImpl(this.name, this.slug, this.id, this.type);

  factory _$BreadcrumbsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreadcrumbsImplFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  final int? id;
  @override
  final String? type;

  @override
  String toString() {
    return 'Breadcrumbs(name: $name, slug: $slug, id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreadcrumbsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreadcrumbsImplCopyWith<_$BreadcrumbsImpl> get copyWith =>
      __$$BreadcrumbsImplCopyWithImpl<_$BreadcrumbsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreadcrumbsImplToJson(
      this,
    );
  }
}

abstract class _Breadcrumbs implements Breadcrumbs {
  const factory _Breadcrumbs(final String? name, final String? slug,
      final int? id, final String? type) = _$BreadcrumbsImpl;

  factory _Breadcrumbs.fromJson(Map<String, dynamic> json) =
      _$BreadcrumbsImpl.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  int? get id;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$BreadcrumbsImplCopyWith<_$BreadcrumbsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Characters _$CharactersFromJson(Map<String, dynamic> json) {
  return _Characters.fromJson(json);
}

/// @nodoc
mixin _$Characters {
  String? get name => throw _privateConstructorUsedError;
  List<Characters>? get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersCopyWith<Characters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersCopyWith<$Res> {
  factory $CharactersCopyWith(
          Characters value, $Res Function(Characters) then) =
      _$CharactersCopyWithImpl<$Res, Characters>;
  @useResult
  $Res call({String? name, List<Characters>? characters});
}

/// @nodoc
class _$CharactersCopyWithImpl<$Res, $Val extends Characters>
    implements $CharactersCopyWith<$Res> {
  _$CharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Characters>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersImplCopyWith<$Res>
    implements $CharactersCopyWith<$Res> {
  factory _$$CharactersImplCopyWith(
          _$CharactersImpl value, $Res Function(_$CharactersImpl) then) =
      __$$CharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<Characters>? characters});
}

/// @nodoc
class __$$CharactersImplCopyWithImpl<$Res>
    extends _$CharactersCopyWithImpl<$Res, _$CharactersImpl>
    implements _$$CharactersImplCopyWith<$Res> {
  __$$CharactersImplCopyWithImpl(
      _$CharactersImpl _value, $Res Function(_$CharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? characters = freezed,
  }) {
    return _then(_$CharactersImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Characters>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$CharactersImpl implements _Characters {
  const _$CharactersImpl(this.name, final List<Characters>? characters)
      : _characters = characters;

  factory _$CharactersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersImplFromJson(json);

  @override
  final String? name;
  final List<Characters>? _characters;
  @override
  List<Characters>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Characters(name: $name, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      __$$CharactersImplCopyWithImpl<_$CharactersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersImplToJson(
      this,
    );
  }
}

abstract class _Characters implements Characters {
  const factory _Characters(
          final String? name, final List<Characters>? characters) =
      _$CharactersImpl;

  factory _Characters.fromJson(Map<String, dynamic> json) =
      _$CharactersImpl.fromJson;

  @override
  String? get name;
  @override
  List<Characters>? get characters;
  @override
  @JsonKey(ignore: true)
  _$$CharactersImplCopyWith<_$CharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableStores _$AvailableStoresFromJson(Map<String, dynamic> json) {
  return _AvailableStores.fromJson(json);
}

/// @nodoc
mixin _$AvailableStores {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get workTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableStoresCopyWith<AvailableStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableStoresCopyWith<$Res> {
  factory $AvailableStoresCopyWith(
          AvailableStores value, $Res Function(AvailableStores) then) =
      _$AvailableStoresCopyWithImpl<$Res, AvailableStores>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? lat,
      String? long,
      String? phone,
      String? address,
      String? description,
      String? workTime});
}

/// @nodoc
class _$AvailableStoresCopyWithImpl<$Res, $Val extends AvailableStores>
    implements $AvailableStoresCopyWith<$Res> {
  _$AvailableStoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? workTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableStoresImplCopyWith<$Res>
    implements $AvailableStoresCopyWith<$Res> {
  factory _$$AvailableStoresImplCopyWith(_$AvailableStoresImpl value,
          $Res Function(_$AvailableStoresImpl) then) =
      __$$AvailableStoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? lat,
      String? long,
      String? phone,
      String? address,
      String? description,
      String? workTime});
}

/// @nodoc
class __$$AvailableStoresImplCopyWithImpl<$Res>
    extends _$AvailableStoresCopyWithImpl<$Res, _$AvailableStoresImpl>
    implements _$$AvailableStoresImplCopyWith<$Res> {
  __$$AvailableStoresImplCopyWithImpl(
      _$AvailableStoresImpl _value, $Res Function(_$AvailableStoresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? workTime = freezed,
  }) {
    return _then(_$AvailableStoresImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$AvailableStoresImpl implements _AvailableStores {
  const _$AvailableStoresImpl(this.id, this.name, this.lat, this.long,
      this.phone, this.address, this.description, this.workTime);

  factory _$AvailableStoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableStoresImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? lat;
  @override
  final String? long;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? workTime;

  @override
  String toString() {
    return 'AvailableStores(id: $id, name: $name, lat: $lat, long: $long, phone: $phone, address: $address, description: $description, workTime: $workTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableStoresImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, lat, long, phone, address, description, workTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableStoresImplCopyWith<_$AvailableStoresImpl> get copyWith =>
      __$$AvailableStoresImplCopyWithImpl<_$AvailableStoresImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableStoresImplToJson(
      this,
    );
  }
}

abstract class _AvailableStores implements AvailableStores {
  const factory _AvailableStores(
      final int? id,
      final String? name,
      final String? lat,
      final String? long,
      final String? phone,
      final String? address,
      final String? description,
      final String? workTime) = _$AvailableStoresImpl;

  factory _AvailableStores.fromJson(Map<String, dynamic> json) =
      _$AvailableStoresImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get lat;
  @override
  String? get long;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get workTime;
  @override
  @JsonKey(ignore: true)
  _$$AvailableStoresImplCopyWith<_$AvailableStoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Accessories _$AccessoriesFromJson(Map<String, dynamic> json) {
  return _Accessories.fromJson(json);
}

/// @nodoc
mixin _$Accessories {
  String? get name => throw _privateConstructorUsedError;
  List<Products>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessoriesCopyWith<Accessories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessoriesCopyWith<$Res> {
  factory $AccessoriesCopyWith(
          Accessories value, $Res Function(Accessories) then) =
      _$AccessoriesCopyWithImpl<$Res, Accessories>;
  @useResult
  $Res call({String? name, List<Products>? products});
}

/// @nodoc
class _$AccessoriesCopyWithImpl<$Res, $Val extends Accessories>
    implements $AccessoriesCopyWith<$Res> {
  _$AccessoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessoriesImplCopyWith<$Res>
    implements $AccessoriesCopyWith<$Res> {
  factory _$$AccessoriesImplCopyWith(
          _$AccessoriesImpl value, $Res Function(_$AccessoriesImpl) then) =
      __$$AccessoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, List<Products>? products});
}

/// @nodoc
class __$$AccessoriesImplCopyWithImpl<$Res>
    extends _$AccessoriesCopyWithImpl<$Res, _$AccessoriesImpl>
    implements _$$AccessoriesImplCopyWith<$Res> {
  __$$AccessoriesImplCopyWithImpl(
      _$AccessoriesImpl _value, $Res Function(_$AccessoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? products = freezed,
  }) {
    return _then(_$AccessoriesImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$AccessoriesImpl implements _Accessories {
  const _$AccessoriesImpl(this.name, final List<Products>? products)
      : _products = products;

  factory _$AccessoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessoriesImplFromJson(json);

  @override
  final String? name;
  final List<Products>? _products;
  @override
  List<Products>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Accessories(name: $name, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessoriesImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessoriesImplCopyWith<_$AccessoriesImpl> get copyWith =>
      __$$AccessoriesImplCopyWithImpl<_$AccessoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessoriesImplToJson(
      this,
    );
  }
}

abstract class _Accessories implements Accessories {
  const factory _Accessories(
      final String? name, final List<Products>? products) = _$AccessoriesImpl;

  factory _Accessories.fromJson(Map<String, dynamic> json) =
      _$AccessoriesImpl.fromJson;

  @override
  String? get name;
  @override
  List<Products>? get products;
  @override
  @JsonKey(ignore: true)
  _$$AccessoriesImplCopyWith<_$AccessoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get salePrice => throw _privateConstructorUsedError;
  int? get allCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      int? salePrice,
      int? allCount});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? allCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
          _$ProductsImpl value, $Res Function(_$ProductsImpl) then) =
      __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      int? salePrice,
      int? allCount});
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
      _$ProductsImpl _value, $Res Function(_$ProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? salePrice = freezed,
    Object? allCount = freezed,
  }) {
    return _then(_$ProductsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductsImpl implements _Products {
  const _$ProductsImpl(this.id, this.name, this.image, this.availability,
      this.axiomMonthlyPrice, this.salePrice, this.allCount);

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? availability;
  @override
  final String? axiomMonthlyPrice;
  @override
  final int? salePrice;
  @override
  final int? allCount;

  @override
  String toString() {
    return 'Products(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, allCount: $allCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, availability,
      axiomMonthlyPrice, salePrice, allCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImplToJson(
      this,
    );
  }
}

abstract class _Products implements Products {
  const factory _Products(
      final int? id,
      final String? name,
      final String? image,
      final String? availability,
      final String? axiomMonthlyPrice,
      final int? salePrice,
      final int? allCount) = _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get availability;
  @override
  String? get axiomMonthlyPrice;
  @override
  int? get salePrice;
  @override
  int? get allCount;
  @override
  @JsonKey(ignore: true)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
