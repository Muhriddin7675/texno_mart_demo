part of 'detail_bloc.dart';


final class DetailScreenState  {
  final ProductDetailResponse? productData;
  final Status status;
  final String? errorMessage;

  DetailScreenState(
      {required this.status, this.productData, this.errorMessage});

  DetailScreenState copyWith(
    final ProductDetailResponse? productData,
    final Status? status,
    final String? errorMessage,
  ) =>
      DetailScreenState(
          status: this.status,
          productData: productData ?? this.productData,
          errorMessage: errorMessage ?? this.errorMessage);
}
