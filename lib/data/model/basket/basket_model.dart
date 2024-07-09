import 'dart:ffi';

import 'package:hive/hive.dart';

part 'basket_model.g.dart';

@HiveType(typeId: 0)
class BasketModel extends HiveObject {
  @HiveField(0)
  String productId;
  @HiveField(1)
  String name;
  @HiveField(2)
  String image;
  @HiveField(3)
  int price;
  @HiveField(4)
  int count;
  @HiveField(5)
  bool isChecked;

  BasketModel(
       this.productId,
       this.name,
       this.image,
       this.price,
       this.count,
       this.isChecked);
}
