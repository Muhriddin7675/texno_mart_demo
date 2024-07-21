import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_response.freezed.dart';

part 'location_response.g.dart';

@freezed
class LocationResponse with _$LocationResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory LocationResponse(
    bool? success,
    String? message,
    int? code,
    LocationList? data,
  ) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) => _$LocationResponseFromJson(json);
}

@freezed
class LocationList with _$LocationList {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory LocationList(
    List<Data>? data,
  ) = _LocationList;

  factory LocationList.fromJson(Map<String, dynamic> json) => _$LocationListFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Data(
    int? id,
    String? name,
    List<OpenedStores>? openedStores,
    List<String>? notOpenedStores,
  ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class OpenedStores with _$OpenedStores {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory OpenedStores(
    int? id,
    String? name,
    String? address,
    String? description,
    String? long,
    String? lat,
    String? phone,
    String? workTime,
    List<String>? images,
  ) = _OpenedStores;

  factory OpenedStores.fromJson(Map<String, dynamic> json) => _$OpenedStoresFromJson(json);
}
