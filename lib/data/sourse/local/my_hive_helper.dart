import 'package:flutter_retrofit_texnomart/data/model/basket/basket_model.dart';
import 'package:flutter_retrofit_texnomart/data/model/favorite/favorite_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class MyHiveHelper {
  static const String favoriteBoxName = "FAVORITES";
  static const String basketBoxName = "BASKETS";
  static late final Box<FavoriteModel> boxFavorite;
  static late final Box<BasketModel> boxBasket;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.registerAdapter(BasketModelAdapter());
    boxBasket = await Hive.openBox<BasketModel>(basketBoxName);
    Hive.registerAdapter(FavoriteModelAdapter());
    boxFavorite = await Hive.openBox<FavoriteModel>(favoriteBoxName);
  }

  static void addBasket(BasketModel basket) {
    boxBasket.put(basket.productId, basket);
  }

  static void removeBasket(String productId) {
    boxBasket.delete(productId);
  }

  static void updateBasket(BasketModel basket) {
    basket.save();
  }
  static bool isHasBasket(String productId){
    var list = boxBasket.get(productId);
    if(list == null){
      return false;
    }
    return true;
  }

  static List<BasketModel> getAllBasket() {
    return boxBasket.values.toList();
  }


  static void addFavorite(FavoriteModel basket) {
    boxFavorite.put(basket.productId, basket);
  }

  static void removeFavorite(String productId) {
    boxFavorite.delete(productId);
  }

  static void updateFavorite(FavoriteModel basket) {
    basket.save();
  }

  static List<FavoriteModel> getAllFavorite() {
    return boxFavorite.values.toList();
  }
  static bool isHasFavorite(String productId){
    var list = boxFavorite.get(productId);
    if(list == null){
      return false;
    }
    return true;
  }
}
