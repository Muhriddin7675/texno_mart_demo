// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  LocationList? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res, LocationResponse>;
  @useResult
  $Res call({bool? success, String? message, int? code, LocationList? data});

  $LocationListCopyWith<$Res>? get data;
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res, $Val extends LocationResponse>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

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
              as LocationList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationListCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LocationListCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationResponseImplCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$$LocationResponseImplCopyWith(_$LocationResponseImpl value,
          $Res Function(_$LocationResponseImpl) then) =
      __$$LocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, int? code, LocationList? data});

  @override
  $LocationListCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LocationResponseImplCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res, _$LocationResponseImpl>
    implements _$$LocationResponseImplCopyWith<$Res> {
  __$$LocationResponseImplCopyWithImpl(_$LocationResponseImpl _value,
      $Res Function(_$LocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LocationResponseImpl(
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
              as LocationList?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LocationResponseImpl implements _LocationResponse {
  const _$LocationResponseImpl(
      this.success, this.message, this.code, this.data);

  factory _$LocationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final LocationList? data;

  @override
  String toString() {
    return 'LocationResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationResponseImpl &&
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
  _$$LocationResponseImplCopyWith<_$LocationResponseImpl> get copyWith =>
      __$$LocationResponseImplCopyWithImpl<_$LocationResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationResponseImplToJson(
      this,
    );
  }
}

abstract class _LocationResponse implements LocationResponse {
  const factory _LocationResponse(final bool? success, final String? message,
      final int? code, final LocationList? data) = _$LocationResponseImpl;

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$LocationResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  int? get code;
  @override
  LocationList? get data;
  @override
  @JsonKey(ignore: true)
  _$$LocationResponseImplCopyWith<_$LocationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationList _$LocationListFromJson(Map<String, dynamic> json) {
  return _LocationList.fromJson(json);
}

/// @nodoc
mixin _$LocationList {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationListCopyWith<LocationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationListCopyWith<$Res> {
  factory $LocationListCopyWith(
          LocationList value, $Res Function(LocationList) then) =
      _$LocationListCopyWithImpl<$Res, LocationList>;
  @useResult
  $Res call({List<Data>? data});
}

/// @nodoc
class _$LocationListCopyWithImpl<$Res, $Val extends LocationList>
    implements $LocationListCopyWith<$Res> {
  _$LocationListCopyWithImpl(this._value, this._then);

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
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationListImplCopyWith<$Res>
    implements $LocationListCopyWith<$Res> {
  factory _$$LocationListImplCopyWith(
          _$LocationListImpl value, $Res Function(_$LocationListImpl) then) =
      __$$LocationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data>? data});
}

/// @nodoc
class __$$LocationListImplCopyWithImpl<$Res>
    extends _$LocationListCopyWithImpl<$Res, _$LocationListImpl>
    implements _$$LocationListImplCopyWith<$Res> {
  __$$LocationListImplCopyWithImpl(
      _$LocationListImpl _value, $Res Function(_$LocationListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LocationListImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LocationListImpl implements _LocationList {
  const _$LocationListImpl(final List<Data>? data) : _data = data;

  factory _$LocationListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationListImplFromJson(json);

  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationListImplCopyWith<_$LocationListImpl> get copyWith =>
      __$$LocationListImplCopyWithImpl<_$LocationListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationListImplToJson(
      this,
    );
  }
}

abstract class _LocationList implements LocationList {
  const factory _LocationList(final List<Data>? data) = _$LocationListImpl;

  factory _LocationList.fromJson(Map<String, dynamic> json) =
      _$LocationListImpl.fromJson;

  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$LocationListImplCopyWith<_$LocationListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<OpenedStores>? get openedStores => throw _privateConstructorUsedError;
  List<String>? get notOpenedStores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<OpenedStores>? openedStores,
      List<String>? notOpenedStores});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openedStores = freezed,
    Object? notOpenedStores = freezed,
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
      openedStores: freezed == openedStores
          ? _value.openedStores
          : openedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStores>?,
      notOpenedStores: freezed == notOpenedStores
          ? _value.notOpenedStores
          : notOpenedStores // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<OpenedStores>? openedStores,
      List<String>? notOpenedStores});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? openedStores = freezed,
    Object? notOpenedStores = freezed,
  }) {
    return _then(_$DataImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == openedStores
          ? _value._openedStores
          : openedStores // ignore: cast_nullable_to_non_nullable
              as List<OpenedStores>?,
      freezed == notOpenedStores
          ? _value._notOpenedStores
          : notOpenedStores // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$DataImpl implements _Data {
  const _$DataImpl(this.id, this.name, final List<OpenedStores>? openedStores,
      final List<String>? notOpenedStores)
      : _openedStores = openedStores,
        _notOpenedStores = notOpenedStores;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<OpenedStores>? _openedStores;
  @override
  List<OpenedStores>? get openedStores {
    final value = _openedStores;
    if (value == null) return null;
    if (_openedStores is EqualUnmodifiableListView) return _openedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _notOpenedStores;
  @override
  List<String>? get notOpenedStores {
    final value = _notOpenedStores;
    if (value == null) return null;
    if (_notOpenedStores is EqualUnmodifiableListView) return _notOpenedStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, name: $name, openedStores: $openedStores, notOpenedStores: $notOpenedStores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._openedStores, _openedStores) &&
            const DeepCollectionEquality()
                .equals(other._notOpenedStores, _notOpenedStores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_openedStores),
      const DeepCollectionEquality().hash(_notOpenedStores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      final int? id,
      final String? name,
      final List<OpenedStores>? openedStores,
      final List<String>? notOpenedStores) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<OpenedStores>? get openedStores;
  @override
  List<String>? get notOpenedStores;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenedStores _$OpenedStoresFromJson(Map<String, dynamic> json) {
  return _OpenedStores.fromJson(json);
}

/// @nodoc
mixin _$OpenedStores {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get workTime => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenedStoresCopyWith<OpenedStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenedStoresCopyWith<$Res> {
  factory $OpenedStoresCopyWith(
          OpenedStores value, $Res Function(OpenedStores) then) =
      _$OpenedStoresCopyWithImpl<$Res, OpenedStores>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<String>? images});
}

/// @nodoc
class _$OpenedStoresCopyWithImpl<$Res, $Val extends OpenedStores>
    implements $OpenedStoresCopyWith<$Res> {
  _$OpenedStoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      workTime: freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenedStoresImplCopyWith<$Res>
    implements $OpenedStoresCopyWith<$Res> {
  factory _$$OpenedStoresImplCopyWith(
          _$OpenedStoresImpl value, $Res Function(_$OpenedStoresImpl) then) =
      __$$OpenedStoresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? address,
      String? description,
      String? long,
      String? lat,
      String? phone,
      String? workTime,
      List<String>? images});
}

/// @nodoc
class __$$OpenedStoresImplCopyWithImpl<$Res>
    extends _$OpenedStoresCopyWithImpl<$Res, _$OpenedStoresImpl>
    implements _$$OpenedStoresImplCopyWith<$Res> {
  __$$OpenedStoresImplCopyWithImpl(
      _$OpenedStoresImpl _value, $Res Function(_$OpenedStoresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? long = freezed,
    Object? lat = freezed,
    Object? phone = freezed,
    Object? workTime = freezed,
    Object? images = freezed,
  }) {
    return _then(_$OpenedStoresImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$OpenedStoresImpl implements _OpenedStores {
  const _$OpenedStoresImpl(
      this.id,
      this.name,
      this.address,
      this.description,
      this.long,
      this.lat,
      this.phone,
      this.workTime,
      final List<String>? images)
      : _images = images;

  factory _$OpenedStoresImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenedStoresImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? description;
  @override
  final String? long;
  @override
  final String? lat;
  @override
  final String? phone;
  @override
  final String? workTime;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OpenedStores(id: $id, name: $name, address: $address, description: $description, long: $long, lat: $lat, phone: $phone, workTime: $workTime, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenedStoresImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, description,
      long, lat, phone, workTime, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenedStoresImplCopyWith<_$OpenedStoresImpl> get copyWith =>
      __$$OpenedStoresImplCopyWithImpl<_$OpenedStoresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenedStoresImplToJson(
      this,
    );
  }
}

abstract class _OpenedStores implements OpenedStores {
  const factory _OpenedStores(
      final int? id,
      final String? name,
      final String? address,
      final String? description,
      final String? long,
      final String? lat,
      final String? phone,
      final String? workTime,
      final List<String>? images) = _$OpenedStoresImpl;

  factory _OpenedStores.fromJson(Map<String, dynamic> json) =
      _$OpenedStoresImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get description;
  @override
  String? get long;
  @override
  String? get lat;
  @override
  String? get phone;
  @override
  String? get workTime;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$OpenedStoresImplCopyWith<_$OpenedStoresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
