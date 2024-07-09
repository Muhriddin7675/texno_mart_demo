part of 'all_product_bloc.dart';

final class AllProductState {
  final ProductAllCategory? allProduct;
  final List<String>? chipsNameList;
  final List<Categories>? chipsListData;
  final Status? allProductStatus;
  final Status? chipsStatus;
  final String? errorMessage;
  final int? chipsIndex;

  AllProductState(
      {this.chipsListData,
      this.allProduct, this.chipsNameList,
      this.allProductStatus,
      this.chipsStatus,
      this.errorMessage,
      this.chipsIndex});

  AllProductState copyWith({
    final ProductAllCategory? allProduct,
    final List<String>? chipsNameList,
    final List<Categories>? chipsListData,
    final Status? allProductStatus,
    final Status? chipsStatus,
    final String? errorMessage,
    final int? chipsIndex,
  }) =>
      AllProductState(
          allProduct: allProduct ?? this.allProduct,
          errorMessage: errorMessage ?? this.errorMessage,
          chipsNameList: chipsNameList ?? this.chipsNameList,
          chipsIndex: chipsIndex ?? this.chipsIndex,
          allProductStatus: allProductStatus ?? this.allProductStatus,
          chipsStatus: chipsStatus ?? this.chipsStatus,
          chipsListData: chipsListData ?? this.chipsListData);
}
