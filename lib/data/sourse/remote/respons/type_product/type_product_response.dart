import 'package:freezed_annotation/freezed_annotation.dart';


part 'type_product_response.freezed.dart';
part 'type_product_response.g.dart';

@freezed
class TypeProductResponse with _$TypeProductResponse {

  const factory TypeProductResponse(
      bool? success,
      String? message,
      int? code,
      GetAllProductData? data,
      ) = _TypeProductResponse;

  factory TypeProductResponse.fromJson(Map<String, dynamic> json) => _$TypeProductResponseFromJson(json);
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
  const factory ProductData(
  int? id,
  String? name,
  String? image,
  String? availability,
  String? axiomMonthlyPrice,
  int? salePrice,
  String? oldPrice,
  int? finishPrice,
  int? discountPrice,
  int? reviewsCount,
  int? reviewsAverage,
  int? allCount,
      ) = _ProductData;
  factory ProductData.fromJson(Map<String, dynamic> json) =>
  _$ProductDataFromJson(json);
}
