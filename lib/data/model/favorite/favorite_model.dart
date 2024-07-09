import 'package:hive/hive.dart';

part 'favorite_model.g.dart';

@HiveType(typeId: 1)
class FavoriteModel extends HiveObject {
  @HiveField(0)
  final String productId;
  @HiveField(1)
  final bool isFavorite;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String image;
  @HiveField(4)
  final String price;

  FavoriteModel( this.productId,  this.isFavorite, this.name, this.image, this.price);
}
