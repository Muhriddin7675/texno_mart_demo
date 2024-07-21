part of 'home_page_bloc.dart';

class HomePageState {
  late final Status status;
  final SliderResponse? sliderResponse;
  final String? errorMessage;
  final SpecialCategories? specialCategories;
  final List<ProductData>? newProductData;
  final List<ProductData>? xitProductData;
  final List<ProductData>? climateProductData;

  HomePageState({
    required this.status,
    this.sliderResponse,
    this.errorMessage,
    this.specialCategories,
    this.newProductData,
    this.xitProductData,
    this.climateProductData,
  });

  HomePageState copyWith(
          {Status? status,
          SliderResponse? sliderResponse,
          String? errorMessage,
          SpecialCategories? specialCategories,
          List<ProductData>? newProductData,
          List<ProductData>? xitProductData,
          List<ProductData>? climateProductData,
        }) =>
      HomePageState(
        status: this.status,
        sliderResponse: sliderResponse ?? this.sliderResponse,
        errorMessage: errorMessage ?? this.errorMessage,
        specialCategories: specialCategories ?? this.specialCategories,
        newProductData: newProductData ?? this.newProductData,
        xitProductData: xitProductData ?? this.xitProductData,
        climateProductData: climateProductData ?? this.climateProductData,
      );
}
