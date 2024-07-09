import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/catalog/catalog_menu.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/new_product/new_product_response.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/slider/slider_response.dart';
import 'package:retrofit/retrofit.dart';

import '../respons/chips/chips_response.dart';
import '../respons/product_all_category/product_all_category.dart';
import '../respons/product_detail/product_detail_response.dart';
import '../respons/spesical_categories/special_categories.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('web/v1/content/sliders')
  Future<SliderResponse> getSlider();

  @GET('web/v1/home/special-categories')
  Future<SpecialCategories> getSpecialCategories();

  @GET('web/v1/home/special-products?type=new_products')
  Future<NewProductResponse> getNewProducts();

  @GET('web/v1/product/detail')
  Future<ProductDetailResponse> getProductDetail({
    @Query("id") required String id,
  });

  @GET('web/v1/header/popup-menu-catalog')
  Future<CatalogMenu> getAllCatalog();

  @GET("common/v1/search/filters")
  Future<ProductAllCategory> getCategoryProductSimple({
    @Query("category_all") required String category,
    @Query("sort") String? sort,
    @Query("page") String? number,
  });

  @GET("web/v1/category/chips")
  Future<ChipsResponse> getChips({
    @Query("slug") required String category,
  });

/*  @GET('web/v1/home/special-products?type=hit_products')
  Future<XitProducts>getXitProducts();

  @GET('web/v1/home/special-brands')
  Future<SpecialBrands> getSpecialBrands();

  @GET('common/v1/search/filters?category_all=smartfony&sort=popular&page=1')
  Future<SmartPhone> getSmartPhone();

  @GET('web/v1/product/detail?id=89546')
  Future<ProductDetail> getProductDetail();*/
}
