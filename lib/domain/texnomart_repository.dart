
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/slider/slider_response.dart';

import '../data/sourse/remote/respons/catalog/catalog_menu.dart';
import '../data/sourse/remote/respons/chips/chips_response.dart';
import '../data/sourse/remote/respons/map/location_response.dart';
import '../data/sourse/remote/respons/product_all_category/product_all_category.dart';
import '../data/sourse/remote/respons/product_detail/product_detail_response.dart';
import '../data/sourse/remote/respons/spesical_categories/special_categories.dart';
import '../data/sourse/remote/respons/type_product/type_product_response.dart';

abstract class TexnomartRepository{
  Future<SliderResponse> getSlider();
  Future<SpecialCategories> getSpecialCategories();
  Future<TypeProductResponse> getByTypeProductResponse(String type);
  Future<ProductDetailResponse> getByIdProductData(String id);
  Future<ProductAllCategory> getAllByCategory(String category,String? sort,String? number);
  Future<CatalogMenu> getCatalogMenu();
  Future<ChipsResponse> getChips(String category);
  Future<LocationResponse> getLocationList();
}