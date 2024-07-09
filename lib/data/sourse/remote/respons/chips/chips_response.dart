import 'package:freezed_annotation/freezed_annotation.dart';

part 'chips_response.freezed.dart';

part 'chips_response.g.dart';

@freezed
class ChipsResponse with _$ChipsResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory ChipsResponse(
    bool? success,
    String? message,
    int? code,
    ProductData? data,
  ) = _ChipsResponse;

  factory ChipsResponse.fromJson(Map<String, dynamic> json) => _$ChipsResponseFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory ProductData(
    Parent? parent,
    List<Categories>? categories,
    bool? hasChildImage,
    bool? hasChild,
  ) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);
}

@freezed
class Parent with _$Parent {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Parent(
    int? id,
    String? name,
    String? image,
    String? slug,
    bool? hasChild,
  ) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}

@freezed
class Categories with _$Categories {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Categories(
    int? id,
    String? name,
    String? image,
    String? slug,
    bool? hasChild,
  ) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
}
