part of 'favorite_bloc.dart';

 class FavoriteState {
   final List<FavoriteModel>? allProduct;
   final Status status;
   final String? errorMessage;

  FavoriteState({ this.allProduct, required this.status,  this.errorMessage});


   FavoriteState copyWith(
       final List<FavoriteModel>? allProduct,
       final Status? status,
       final String? errorMessage,
       ) =>
       FavoriteState(
           status: this.status,
           allProduct: allProduct ?? this.allProduct,
           errorMessage: errorMessage ?? this.errorMessage);
 }

