part of 'all_product_bloc.dart';

abstract class ByCategoryAllProductEvent{}

class AllProductEvent extends ByCategoryAllProductEvent {
  final int chipsIndex;
  final String category;
  AllProductEvent({required this.category, required this.chipsIndex});
}
class LoadChipsList extends ByCategoryAllProductEvent{
  final String category;
  LoadChipsList({required this.category});
}
class GetAllProductFavorite extends ByCategoryAllProductEvent{}

