
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/slider/slider_response.dart';

import '../data/sourse/remote/respons/catalog/catalog_menu.dart';
import '../data/sourse/remote/respons/chips/chips_response.dart';
import '../data/sourse/remote/respons/new_product/new_product_response.dart';
import '../data/sourse/remote/respons/product_all_category/product_all_category.dart';
import '../data/sourse/remote/respons/product_detail/product_detail_response.dart';
import '../data/sourse/remote/respons/spesical_categories/special_categories.dart';

abstract class TexnomartRepository{
  Future<SliderResponse> getSlider();
  Future<SpecialCategories> getSpecialCategories();
  Future<NewProductResponse> getNewProductResponse();
  Future<ProductDetailResponse> getByIdProductData(String id);
  Future<ProductAllCategory> getAllByCategory(String category,String? sort,String? number);
  Future<CatalogMenu> getCatalogMenu();
  Future<ChipsResponse> getChips(String category);
}