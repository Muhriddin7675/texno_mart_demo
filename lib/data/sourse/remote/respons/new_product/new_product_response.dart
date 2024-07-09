import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_product_response.freezed.dart';

part 'new_product_response.g.dart';

@freezed
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class NewProductResponse with _$NewProductResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory NewProductResponse(
      bool? success,
      String? message,
      int? code,
      GetAllProductData? data,
      ) = _NewProductResponse;

  factory NewProductResponse.fromJson(Map<String, dynamic> json) => _$NewProductResponseFromJson(json);
}

@freezed
class GetAllProductData with _$GetAllProductData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetAllProductData(List<ProductData>? data) = _GetAllProductData;

  factory GetAllProductData.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductDataFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory ProductData(int? id,
      String? name,
      String? image,
      String? availability,
      String? axiomMonthlyPrice,
      int? salePrice,
      String? oldPrice,
      int? finishPrice,
      int? discountPrice,
      int? reviewsCount,
      String? reviewsAverage,
      int? allCount,) = _ProductData;
  factory ProductData.fromJson(Map<String, dynamic> json) =>
  _$ProductDataFromJson(json);
}
