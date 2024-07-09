// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialCategories _$SpecialCategoriesFromJson(Map<String, dynamic> json) {
  return _SpecialCategories.fromJson(json);
}

/// @nodoc
mixin _$SpecialCategories {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  GetSpecialCategoriesData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialCategoriesCopyWith<SpecialCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialCategoriesCopyWith<$Res> {
  factory $SpecialCategoriesCopyWith(
          SpecialCategories value, $Res Function(SpecialCategories) then) =
      _$SpecialCategoriesCopyWithImpl<$Res, SpecialCategories>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      int? code,
      GetSpecialCategoriesData? data});

  $GetSpecialCategoriesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpecialCategoriesCopyWithImpl<$Res, $Val extends SpecialCategories>
    implements $SpecialCategoriesCopyWith<$Res> {
  _$SpecialCategoriesCopyWithImpl(this._value, this._then);

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
              as GetSpecialCategoriesData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetSpecialCategoriesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetSpecialCategoriesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialCategoriesImplCopyWith<$Res>
    implements $SpecialCategoriesCopyWith<$Res> {
  factory _$$SpecialCategoriesImplCopyWith(_$SpecialCategoriesImpl value,
          $Res Function(_$SpecialCategoriesImpl) then) =
      __$$SpecialCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      int? code,
      GetSpecialCategoriesData? data});

  @override
  $GetSpecialCategoriesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SpecialCategoriesImplCopyWithImpl<$Res>
    extends _$SpecialCategoriesCopyWithImpl<$Res, _$SpecialCategoriesImpl>
    implements _$$SpecialCategoriesImplCopyWith<$Res> {
  __$$SpecialCategoriesImplCopyWithImpl(_$SpecialCategoriesImpl _value,
      $Res Function(_$SpecialCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SpecialCategoriesImpl(
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
              as GetSpecialCategoriesData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SpecialCategoriesImpl implements _SpecialCategories {
  const _$SpecialCategoriesImpl(
      this.success, this.message, this.code, this.data);

  factory _$SpecialCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialCategoriesImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final GetSpecialCategoriesData? data;

  @override
  String toString() {
    return 'SpecialCategories(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialCategoriesImpl &&
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
  _$$SpecialCategoriesImplCopyWith<_$SpecialCategoriesImpl> get copyWith =>
      __$$SpecialCategoriesImplCopyWithImpl<_$SpecialCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialCategoriesImplToJson(
      this,
    );
  }
}

abstract class _SpecialCategories implements SpecialCategories {
  const factory _SpecialCategories(
      final bool? success,
      final String? message,
      final int? code,
      final GetSpecialCategoriesData? data) = _$SpecialCategoriesImpl;

  factory _SpecialCategories.fromJson(Map<String, dynamic> json) =
      _$SpecialCategoriesImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  GetSpecialCategoriesData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SpecialCategoriesImplCopyWith<_$SpecialCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetSpecialCategoriesData _$GetSpecialCategoriesDataFromJson(
    Map<String, dynamic> json) {
  return _GetSpecialCategoriesData.fromJson(json);
}

/// @nodoc
mixin _$GetSpecialCategoriesData {
  List<GetSpecialCategories>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSpecialCategoriesDataCopyWith<GetSpecialCategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSpecialCategoriesDataCopyWith<$Res> {
  factory $GetSpecialCategoriesDataCopyWith(GetSpecialCategoriesData value,
          $Res Function(GetSpecialCategoriesData) then) =
      _$GetSpecialCategoriesDataCopyWithImpl<$Res, GetSpecialCategoriesData>;
  @useResult
  $Res call({List<GetSpecialCategories>? data});
}

/// @nodoc
class _$GetSpecialCategoriesDataCopyWithImpl<$Res,
        $Val extends GetSpecialCategoriesData>
    implements $GetSpecialCategoriesDataCopyWith<$Res> {
  _$GetSpecialCategoriesDataCopyWithImpl(this._value, this._then);

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
              as List<GetSpecialCategories>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSpecialCategoriesDataImplCopyWith<$Res>
    implements $GetSpecialCategoriesDataCopyWith<$Res> {
  factory _$$GetSpecialCategoriesDataImplCopyWith(
          _$GetSpecialCategoriesDataImpl value,
          $Res Function(_$GetSpecialCategoriesDataImpl) then) =
      __$$GetSpecialCategoriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetSpecialCategories>? data});
}

/// @nodoc
class __$$GetSpecialCategoriesDataImplCopyWithImpl<$Res>
    extends _$GetSpecialCategoriesDataCopyWithImpl<$Res,
        _$GetSpecialCategoriesDataImpl>
    implements _$$GetSpecialCategoriesDataImplCopyWith<$Res> {
  __$$GetSpecialCategoriesDataImplCopyWithImpl(
      _$GetSpecialCategoriesDataImpl _value,
      $Res Function(_$GetSpecialCategoriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetSpecialCategoriesDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetSpecialCategories>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSpecialCategoriesDataImpl implements _GetSpecialCategoriesData {
  const _$GetSpecialCategoriesDataImpl(final List<GetSpecialCategories>? data)
      : _data = data;

  factory _$GetSpecialCategoriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSpecialCategoriesDataImplFromJson(json);

  final List<GetSpecialCategories>? _data;
  @override
  List<GetSpecialCategories>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetSpecialCategoriesData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialCategoriesDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialCategoriesDataImplCopyWith<_$GetSpecialCategoriesDataImpl>
      get copyWith => __$$GetSpecialCategoriesDataImplCopyWithImpl<
          _$GetSpecialCategoriesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSpecialCategoriesDataImplToJson(
      this,
    );
  }
}

abstract class _GetSpecialCategoriesData implements GetSpecialCategoriesData {
  const factory _GetSpecialCategoriesData(
      final List<GetSpecialCategories>? data) = _$GetSpecialCategoriesDataImpl;

  factory _GetSpecialCategoriesData.fromJson(Map<String, dynamic> json) =
      _$GetSpecialCategoriesDataImpl.fromJson;

  @override
  List<GetSpecialCategories>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSpecialCategoriesDataImplCopyWith<_$GetSpecialCategoriesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetSpecialCategories _$GetSpecialCategoriesFromJson(Map<String, dynamic> json) {
  return _GetSpecialCategories.fromJson(json);
}

/// @nodoc
mixin _$GetSpecialCategories {
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSpecialCategoriesCopyWith<GetSpecialCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSpecialCategoriesCopyWith<$Res> {
  factory $GetSpecialCategoriesCopyWith(GetSpecialCategories value,
          $Res Function(GetSpecialCategories) then) =
      _$GetSpecialCategoriesCopyWithImpl<$Res, GetSpecialCategories>;
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class _$GetSpecialCategoriesCopyWithImpl<$Res,
        $Val extends GetSpecialCategories>
    implements $GetSpecialCategoriesCopyWith<$Res> {
  _$GetSpecialCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSpecialCategoriesImplCopyWith<$Res>
    implements $GetSpecialCategoriesCopyWith<$Res> {
  factory _$$GetSpecialCategoriesImplCopyWith(_$GetSpecialCategoriesImpl value,
          $Res Function(_$GetSpecialCategoriesImpl) then) =
      __$$GetSpecialCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? image, String? slug});
}

/// @nodoc
class __$$GetSpecialCategoriesImplCopyWithImpl<$Res>
    extends _$GetSpecialCategoriesCopyWithImpl<$Res, _$GetSpecialCategoriesImpl>
    implements _$$GetSpecialCategoriesImplCopyWith<$Res> {
  __$$GetSpecialCategoriesImplCopyWithImpl(_$GetSpecialCategoriesImpl _value,
      $Res Function(_$GetSpecialCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$GetSpecialCategoriesImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSpecialCategoriesImpl implements _GetSpecialCategories {
  const _$GetSpecialCategoriesImpl(this.title, this.image, this.slug);

  factory _$GetSpecialCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSpecialCategoriesImplFromJson(json);

  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'GetSpecialCategories(title: $title, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpecialCategoriesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpecialCategoriesImplCopyWith<_$GetSpecialCategoriesImpl>
      get copyWith =>
          __$$GetSpecialCategoriesImplCopyWithImpl<_$GetSpecialCategoriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSpecialCategoriesImplToJson(
      this,
    );
  }
}

abstract class _GetSpecialCategories implements GetSpecialCategories {
  const factory _GetSpecialCategories(
          final String? title, final String? image, final String? slug) =
      _$GetSpecialCategoriesImpl;

  factory _GetSpecialCategories.fromJson(Map<String, dynamic> json) =
      _$GetSpecialCategoriesImpl.fromJson;

  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$GetSpecialCategoriesImplCopyWith<_$GetSpecialCategoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
