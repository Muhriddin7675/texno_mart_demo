part of 'home_page_bloc.dart';

class HomePageState {
  late final Status status;
  final SliderResponse? sliderResponse;
  final String? errorMessage;
  final SpecialCategories? specialCategories;
  final List<ProductData>? productData;
  final int notificationCount;

  HomePageState({
    required this.status,
    required this.notificationCount,
    this.sliderResponse,
    this.errorMessage,
    this.specialCategories,
    this.productData,
  });

  HomePageState copyWith({
    Status? status,
    SliderResponse? sliderResponse,
    String? errorMessage,
    SpecialCategories? specialCategories,
    List<ProductData>? productData,
    int? notificationCount

  }) =>
      HomePageState(
          notificationCount: this.notificationCount,
          status: this.status,
          sliderResponse: sliderResponse ?? this.sliderResponse,
          errorMessage: errorMessage ?? this.errorMessage,
          specialCategories: specialCategories ?? this.specialCategories,
          productData: productData ?? this.productData);
}
