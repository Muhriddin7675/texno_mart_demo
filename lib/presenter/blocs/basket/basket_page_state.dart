part of 'basket_page_bloc.dart';

 class BasketPageState {

   final List<BasketUiData> allProduct;
   final List<BasketModel> basketModel;
   final Status status;
   final String? errorMessage;
    int allProductSum = 0;
    int allProductCount = 0;

  BasketPageState( {required this.basketModel,  required this.allProduct, required this.status, this.errorMessage, required this.allProductSum,  required this.allProductCount,});


   BasketPageState copyWith(
       final List<BasketUiData>? allProduct,
       final List<BasketModel>? basketModel,
       final Status? status,
       final String? errorMessage,
       final int allProductSum,
       final int allProductCount,
       ) =>
       BasketPageState(
           status: this.status,
           allProduct: allProduct ?? this.allProduct,
           basketModel: basketModel ?? this.basketModel,
           errorMessage: errorMessage ?? this.errorMessage,
           allProductCount: this.allProductCount,
           allProductSum: this.allProductSum,);
 }

