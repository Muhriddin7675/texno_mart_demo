import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_categories.g.dart';
part 'special_categories.freezed.dart';

@freezed
class SpecialCategories with _$SpecialCategories {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SpecialCategories(
    bool? success,
    String? message,
    int? code,
    GetSpecialCategoriesData? data,
  ) = _SpecialCategories;

  factory SpecialCategories.fromJson(Map<String, dynamic> json) =>
      _$SpecialCategoriesFromJson(json);
}

@freezed
class GetSpecialCategoriesData with _$GetSpecialCategoriesData {
  const factory GetSpecialCategoriesData(
      List<GetSpecialCategories>? data) =
      _GetSpecialCategoriesData;

  factory GetSpecialCategoriesData.fromJson(Map<String, dynamic> json) =>
      _$GetSpecialCategoriesDataFromJson(json);
}

@freezed
class GetSpecialCategories with _$GetSpecialCategories {
  const factory GetSpecialCategories(
  String? title,
  String? image,
  String? slug,
      ) = _GetSpecialCategories;

  factory GetSpecialCategories.fromJson(Map<String, dynamic> json) =>
      _$GetSpecialCategoriesFromJson(json);
}
