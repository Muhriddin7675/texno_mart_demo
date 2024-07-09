import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_response.freezed.dart';

part 'product_detail_response.g.dart';

@freezed
class ProductDetailResponse with _$ProductDetailResponse {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory ProductDetailResponse(
    bool? success,
    String? message,
    int? code,
    ProductAllData? data,
  ) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);
}

@freezed
class ProductAllData with _$ProductAllData {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory ProductAllData(
    ProductData? data,
  ) = _ProductAllData;

  factory ProductAllData.fromJson(Map<String, dynamic> json) =>
      _$ProductAllDataFromJson(json);
}

@freezed
  class ProductData with _$ProductData {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory ProductData(
   int? id,
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
   int? promotion0012Price,
  ) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class Catalog with _$Catalog {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory Catalog(
    String? name,
    int? minPrice,
    int? maxPrice,
  ) = _Catalog;

  factory Catalog.fromJson(Map<String, dynamic> json) =>
      _$CatalogFromJson(json);
}

@freezed
class MinimalLoanPrice with _$MinimalLoanPrice {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory MinimalLoanPrice(
    int? minMonthlyPrice,
    int? monthNumber,
    String? minLoanType,
  ) = _MinimalLoanPrice;

  factory MinimalLoanPrice.fromJson(Map<String, dynamic> json) =>
      _$MinimalLoanPriceFromJson(json);
}

@freezed
class SaleMonths with _$SaleMonths {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory SaleMonths(
    int? id,
    String? key,
    String? name,
    String? image,
  ) = _SaleMonths;

  factory SaleMonths.fromJson(Map<String, dynamic> json) =>
      _$SaleMonthsFromJson(json);
}

@freezed
class Seo with _$Seo {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory Seo(
    String? title,
    String? description,
    String? keywords,
    String? image,
    String? scriptSeo,
  ) = _Seo;

  factory Seo.fromJson(Map<String, dynamic> json) => _$SeoFromJson(json);
}

@freezed
class MainCharacters with _$MainCharacters {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory MainCharacters(
    String? name,
    String? value,
  ) = _MainCharacters;

  factory MainCharacters.fromJson(Map<String, dynamic> json) =>
      _$MainCharactersFromJson(json);
}

@freezed
class Breadcrumbs with _$Breadcrumbs {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory Breadcrumbs(
    String? name,
    String? slug,
    int? id,
    String? type,
  ) = _Breadcrumbs;

  factory Breadcrumbs.fromJson(Map<String, dynamic> json) =>
      _$BreadcrumbsFromJson(json);
}

@freezed
class Characters with _$Characters {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory Characters(
    String? name,
    List<Characters>? characters,
  ) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}

@freezed
class AvailableStores with _$AvailableStores {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory AvailableStores(
    int? id,
    String? name,
    String? lat,
    String? long,
    String? phone,
    String? address,
    String? description,
    String? workTime,
  ) = _AvailableStores;

  factory AvailableStores.fromJson(Map<String, dynamic> json) =>
      _$AvailableStoresFromJson(json);
}

@freezed
class Accessories with _$Accessories {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory Accessories(
    String? name,
    List<Products>? products,
  ) = _Accessories;

   factory Accessories.fromJson(Map<String, dynamic> json) =>
      _$AccessoriesFromJson(json);
}

@freezed
class Products with _$Products {
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Products(
    int? id,
    String? name,
    String? image,
    String? availability,
    String? axiomMonthlyPrice,
    int? salePrice,
    int? allCount,
  ) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
