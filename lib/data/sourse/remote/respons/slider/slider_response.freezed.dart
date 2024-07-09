// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderResponse _$SliderResponseFromJson(Map<String, dynamic> json) {
  return _SliderResponse.fromJson(json);
}

/// @nodoc
mixin _$SliderResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  GetAllSliderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderResponseCopyWith<SliderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderResponseCopyWith<$Res> {
  factory $SliderResponseCopyWith(
          SliderResponse value, $Res Function(SliderResponse) then) =
      _$SliderResponseCopyWithImpl<$Res, SliderResponse>;
  @useResult
  $Res call(
      {bool? success, String? message, int? code, GetAllSliderData? data});

  $GetAllSliderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SliderResponseCopyWithImpl<$Res, $Val extends SliderResponse>
    implements $SliderResponseCopyWith<$Res> {
  _$SliderResponseCopyWithImpl(this._value, this._then);

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
              as GetAllSliderData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllSliderDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetAllSliderDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SliderResponseImplCopyWith<$Res>
    implements $SliderResponseCopyWith<$Res> {
  factory _$$SliderResponseImplCopyWith(_$SliderResponseImpl value,
          $Res Function(_$SliderResponseImpl) then) =
      __$$SliderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? message, int? code, GetAllSliderData? data});

  @override
  $GetAllSliderDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SliderResponseImplCopyWithImpl<$Res>
    extends _$SliderResponseCopyWithImpl<$Res, _$SliderResponseImpl>
    implements _$$SliderResponseImplCopyWith<$Res> {
  __$$SliderResponseImplCopyWithImpl(
      _$SliderResponseImpl _value, $Res Function(_$SliderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SliderResponseImpl(
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
              as GetAllSliderData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$SliderResponseImpl implements _SliderResponse {
  const _$SliderResponseImpl(this.success, this.message, this.code, this.data);

  factory _$SliderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final GetAllSliderData? data;

  @override
  String toString() {
    return 'SliderResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderResponseImpl &&
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
  _$$SliderResponseImplCopyWith<_$SliderResponseImpl> get copyWith =>
      __$$SliderResponseImplCopyWithImpl<_$SliderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderResponseImplToJson(
      this,
    );
  }
}

abstract class _SliderResponse implements SliderResponse {
  const factory _SliderResponse(final bool? success, final String? message,
      final int? code, final GetAllSliderData? data) = _$SliderResponseImpl;

  factory _SliderResponse.fromJson(Map<String, dynamic> json) =
      _$SliderResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  GetAllSliderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SliderResponseImplCopyWith<_$SliderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAllSliderData _$GetAllSliderDataFromJson(Map<String, dynamic> json) {
  return _GetAllSliderData.fromJson(json);
}

/// @nodoc
mixin _$GetAllSliderData {
  List<GetSliderData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllSliderDataCopyWith<GetAllSliderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllSliderDataCopyWith<$Res> {
  factory $GetAllSliderDataCopyWith(
          GetAllSliderData value, $Res Function(GetAllSliderData) then) =
      _$GetAllSliderDataCopyWithImpl<$Res, GetAllSliderData>;
  @useResult
  $Res call({List<GetSliderData>? data});
}

/// @nodoc
class _$GetAllSliderDataCopyWithImpl<$Res, $Val extends GetAllSliderData>
    implements $GetAllSliderDataCopyWith<$Res> {
  _$GetAllSliderDataCopyWithImpl(this._value, this._then);

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
              as List<GetSliderData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllSliderDataImplCopyWith<$Res>
    implements $GetAllSliderDataCopyWith<$Res> {
  factory _$$GetAllSliderDataImplCopyWith(_$GetAllSliderDataImpl value,
          $Res Function(_$GetAllSliderDataImpl) then) =
      __$$GetAllSliderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetSliderData>? data});
}

/// @nodoc
class __$$GetAllSliderDataImplCopyWithImpl<$Res>
    extends _$GetAllSliderDataCopyWithImpl<$Res, _$GetAllSliderDataImpl>
    implements _$$GetAllSliderDataImplCopyWith<$Res> {
  __$$GetAllSliderDataImplCopyWithImpl(_$GetAllSliderDataImpl _value,
      $Res Function(_$GetAllSliderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetAllSliderDataImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetSliderData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GetAllSliderDataImpl implements _GetAllSliderData {
  const _$GetAllSliderDataImpl(final List<GetSliderData>? data) : _data = data;

  factory _$GetAllSliderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllSliderDataImplFromJson(json);

  final List<GetSliderData>? _data;
  @override
  List<GetSliderData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllSliderData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSliderDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSliderDataImplCopyWith<_$GetAllSliderDataImpl> get copyWith =>
      __$$GetAllSliderDataImplCopyWithImpl<_$GetAllSliderDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllSliderDataImplToJson(
      this,
    );
  }
}

abstract class _GetAllSliderData implements GetAllSliderData {
  const factory _GetAllSliderData(final List<GetSliderData>? data) =
      _$GetAllSliderDataImpl;

  factory _GetAllSliderData.fromJson(Map<String, dynamic> json) =
      _$GetAllSliderDataImpl.fromJson;

  @override
  List<GetSliderData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllSliderDataImplCopyWith<_$GetAllSliderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetSliderData _$GetSliderDataFromJson(Map<String, dynamic> json) {
  return _GetSliderData.fromJson(json);
}

/// @nodoc
mixin _$GetSliderData {
  int? get id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageWeb => throw _privateConstructorUsedError;
  String? get imageMobileWeb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSliderDataCopyWith<GetSliderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSliderDataCopyWith<$Res> {
  factory $GetSliderDataCopyWith(
          GetSliderData value, $Res Function(GetSliderData) then) =
      _$GetSliderDataCopyWithImpl<$Res, GetSliderData>;
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class _$GetSliderDataCopyWithImpl<$Res, $Val extends GetSliderData>
    implements $GetSliderDataCopyWith<$Res> {
  _$GetSliderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWeb: freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      imageMobileWeb: freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSliderDataImplCopyWith<$Res>
    implements $GetSliderDataCopyWith<$Res> {
  factory _$$GetSliderDataImplCopyWith(
          _$GetSliderDataImpl value, $Res Function(_$GetSliderDataImpl) then) =
      __$$GetSliderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb});
}

/// @nodoc
class __$$GetSliderDataImplCopyWithImpl<$Res>
    extends _$GetSliderDataCopyWithImpl<$Res, _$GetSliderDataImpl>
    implements _$$GetSliderDataImplCopyWith<$Res> {
  __$$GetSliderDataImplCopyWithImpl(
      _$GetSliderDataImpl _value, $Res Function(_$GetSliderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? title = freezed,
    Object? imageWeb = freezed,
    Object? imageMobileWeb = freezed,
  }) {
    return _then(_$GetSliderDataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageWeb
          ? _value.imageWeb
          : imageWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageMobileWeb
          ? _value.imageMobileWeb
          : imageMobileWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GetSliderDataImpl implements _GetSliderData {
  const _$GetSliderDataImpl(
      this.id, this.link, this.title, this.imageWeb, this.imageMobileWeb);

  factory _$GetSliderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSliderDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? link;
  @override
  final String? title;
  @override
  final String? imageWeb;
  @override
  final String? imageMobileWeb;

  @override
  String toString() {
    return 'GetSliderData(id: $id, link: $link, title: $title, imageWeb: $imageWeb, imageMobileWeb: $imageMobileWeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSliderDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageWeb, imageWeb) ||
                other.imageWeb == imageWeb) &&
            (identical(other.imageMobileWeb, imageMobileWeb) ||
                other.imageMobileWeb == imageMobileWeb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, link, title, imageWeb, imageMobileWeb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSliderDataImplCopyWith<_$GetSliderDataImpl> get copyWith =>
      __$$GetSliderDataImplCopyWithImpl<_$GetSliderDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSliderDataImplToJson(
      this,
    );
  }
}

abstract class _GetSliderData implements GetSliderData {
  const factory _GetSliderData(
      final int? id,
      final String? link,
      final String? title,
      final String? imageWeb,
      final String? imageMobileWeb) = _$GetSliderDataImpl;

  factory _GetSliderData.fromJson(Map<String, dynamic> json) =
      _$GetSliderDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get link;
  @override
  String? get title;
  @override
  String? get imageWeb;
  @override
  String? get imageMobileWeb;
  @override
  @JsonKey(ignore: true)
  _$$GetSliderDataImplCopyWith<_$GetSliderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
