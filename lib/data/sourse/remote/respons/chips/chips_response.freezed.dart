// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chips_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChipsResponse _$ChipsResponseFromJson(Map<String, dynamic> json) {
  return _ChipsResponse.fromJson(json);
}

/// @nodoc
mixin _$ChipsResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  ProductData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChipsResponseCopyWith<ChipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChipsResponseCopyWith<$Res> {
  factory $ChipsResponseCopyWith(
          ChipsResponse value, $Res Function(ChipsResponse) then) =
      _$ChipsResponseCopyWithImpl<$Res, ChipsResponse>;
  @useResult
  $Res call({bool? success, String? message, int? code, ProductData? data});

  $ProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChipsResponseCopyWithImpl<$Res, $Val extends ChipsResponse>
    implements $ChipsResponseCopyWith<$Res> {
  _$ChipsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ChipsResponseImplCopyWith<$Res>
    implements $ChipsResponseCopyWith<$Res> {
  factory _$$ChipsResponseImplCopyWith(
          _$ChipsResponseImpl value, $Res Function(_$ChipsResponseImpl) then) =
      __$$ChipsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, ProductData? data});

  @override
  $ProductDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChipsResponseImplCopyWithImpl<$Res>
    extends _$ChipsResponseCopyWithImpl<$Res, _$ChipsResponseImpl>
    implements _$$ChipsResponseImplCopyWith<$Res> {
  __$$ChipsResponseImplCopyWithImpl(
      _$ChipsResponseImpl _value, $Res Function(_$ChipsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChipsResponseImpl(
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
              as ProductData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ChipsResponseImpl implements _ChipsResponse {
  const _$ChipsResponseImpl(this.success, this.message, this.code, this.data);

  factory _$ChipsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChipsResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final ProductData? data;

  @override
  String toString() {
    return 'ChipsResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChipsResponseImpl &&
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
  _$$ChipsResponseImplCopyWith<_$ChipsResponseImpl> get copyWith =>
      __$$ChipsResponseImplCopyWithImpl<_$ChipsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChipsResponseImplToJson(
      this,
    );
  }
}

abstract class _ChipsResponse implements ChipsResponse {
  const factory _ChipsResponse(final bool? success, final String? message,
      final int? code, final ProductData? data) = _$ChipsResponseImpl;

  factory _ChipsResponse.fromJson(Map<String, dynamic> json) =
      _$ChipsResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  ProductData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChipsResponseImplCopyWith<_$ChipsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  Parent? get parent => throw _privateConstructorUsedError;
  List<Categories>? get categories => throw _privateConstructorUsedError;
  bool? get hasChildImage => throw _privateConstructorUsedError;
  bool? get hasChild => throw _privateConstructorUsedError;

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
      {Parent? parent,
      List<Categories>? categories,
      bool? hasChildImage,
      bool? hasChild});

  $ParentCopyWith<$Res>? get parent;
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
    Object? parent = freezed,
    Object? categories = freezed,
    Object? hasChildImage = freezed,
    Object? hasChild = freezed,
  }) {
    return _then(_value.copyWith(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
      hasChildImage: freezed == hasChildImage
          ? _value.hasChildImage
          : hasChildImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasChild: freezed == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
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
      {Parent? parent,
      List<Categories>? categories,
      bool? hasChildImage,
      bool? hasChild});

  @override
  $ParentCopyWith<$Res>? get parent;
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
    Object? parent = freezed,
    Object? categories = freezed,
    Object? hasChildImage = freezed,
    Object? hasChild = freezed,
  }) {
    return _then(_$ProductDataImpl(
      freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent?,
      freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
      freezed == hasChildImage
          ? _value.hasChildImage
          : hasChildImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(this.parent, final List<Categories>? categories,
      this.hasChildImage, this.hasChild)
      : _categories = categories;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final Parent? parent;
  final List<Categories>? _categories;
  @override
  List<Categories>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? hasChildImage;
  @override
  final bool? hasChild;

  @override
  String toString() {
    return 'ProductData(parent: $parent, categories: $categories, hasChildImage: $hasChildImage, hasChild: $hasChild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.parent, parent) || other.parent == parent) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.hasChildImage, hasChildImage) ||
                other.hasChildImage == hasChildImage) &&
            (identical(other.hasChild, hasChild) ||
                other.hasChild == hasChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      parent,
      const DeepCollectionEquality().hash(_categories),
      hasChildImage,
      hasChild);

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
      final Parent? parent,
      final List<Categories>? categories,
      final bool? hasChildImage,
      final bool? hasChild) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  Parent? get parent;
  @override
  List<Categories>? get categories;
  @override
  bool? get hasChildImage;
  @override
  bool? get hasChild;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return _Parent.fromJson(json);
}

/// @nodoc
mixin _$Parent {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  bool? get hasChild => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCopyWith<Parent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
  @useResult
  $Res call(
      {int? id, String? name, String? image, String? slug, bool? hasChild});
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

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
    Object? slug = freezed,
    Object? hasChild = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      hasChild: freezed == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentImplCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$$ParentImplCopyWith(
          _$ParentImpl value, $Res Function(_$ParentImpl) then) =
      __$$ParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, String? image, String? slug, bool? hasChild});
}

/// @nodoc
class __$$ParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$ParentImpl>
    implements _$$ParentImplCopyWith<$Res> {
  __$$ParentImplCopyWithImpl(
      _$ParentImpl _value, $Res Function(_$ParentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? slug = freezed,
    Object? hasChild = freezed,
  }) {
    return _then(_$ParentImpl(
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
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$ParentImpl implements _Parent {
  const _$ParentImpl(this.id, this.name, this.image, this.slug, this.hasChild);

  factory _$ParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? slug;
  @override
  final bool? hasChild;

  @override
  String toString() {
    return 'Parent(id: $id, name: $name, image: $image, slug: $slug, hasChild: $hasChild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.hasChild, hasChild) ||
                other.hasChild == hasChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, slug, hasChild);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      __$$ParentImplCopyWithImpl<_$ParentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentImplToJson(
      this,
    );
  }
}

abstract class _Parent implements Parent {
  const factory _Parent(final int? id, final String? name, final String? image,
      final String? slug, final bool? hasChild) = _$ParentImpl;

  factory _Parent.fromJson(Map<String, dynamic> json) = _$ParentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  bool? get hasChild;
  @override
  @JsonKey(ignore: true)
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  bool? get hasChild => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call(
      {int? id, String? name, String? image, String? slug, bool? hasChild});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

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
    Object? slug = freezed,
    Object? hasChild = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      hasChild: freezed == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesImplCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$CategoriesImplCopyWith(
          _$CategoriesImpl value, $Res Function(_$CategoriesImpl) then) =
      __$$CategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, String? image, String? slug, bool? hasChild});
}

/// @nodoc
class __$$CategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$CategoriesImpl>
    implements _$$CategoriesImplCopyWith<$Res> {
  __$$CategoriesImplCopyWithImpl(
      _$CategoriesImpl _value, $Res Function(_$CategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? slug = freezed,
    Object? hasChild = freezed,
  }) {
    return _then(_$CategoriesImpl(
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
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == hasChild
          ? _value.hasChild
          : hasChild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$CategoriesImpl implements _Categories {
  const _$CategoriesImpl(
      this.id, this.name, this.image, this.slug, this.hasChild);

  factory _$CategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? slug;
  @override
  final bool? hasChild;

  @override
  String toString() {
    return 'Categories(id: $id, name: $name, image: $image, slug: $slug, hasChild: $hasChild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.hasChild, hasChild) ||
                other.hasChild == hasChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, slug, hasChild);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      __$$CategoriesImplCopyWithImpl<_$CategoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesImplToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories(
      final int? id,
      final String? name,
      final String? image,
      final String? slug,
      final bool? hasChild) = _$CategoriesImpl;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$CategoriesImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  bool? get hasChild;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
