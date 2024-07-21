import 'package:dio/dio.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/catalog/catalog_menu.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/chips/chips_response.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/map/location_response.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/product_all_category/product_all_category.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/product_detail/product_detail_response.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/slider/slider_response.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/spesical_categories/special_categories.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/type_product/type_product_response.dart';

import '../../di/di.dart';
import '../../domain/texnomart_repository.dart';
import '../sourse/remote/servis/api_service.dart';

class TexnomartRepositoryImpl extends TexnomartRepository {
  final apiService = di<ApiService>();

  @override
  Future<SliderResponse> getSlider() async {
    try {
      final response = await apiService.getSlider();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SpecialCategories> getSpecialCategories() async {
    try {
      final response = await apiService.getSpecialCategories();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<ProductDetailResponse> getByIdProductData(String id) async {
    try {
      final response = await apiService.getProductDetail(id: id);
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<ProductAllCategory> getAllByCategory(String category, String? sort, String? number) async {
    try {
      final response = await apiService.getCategoryProductSimple(category: category, sort: sort, number: number);
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<CatalogMenu> getCatalogMenu() async {
    try {
      final response = await apiService.getAllCatalog();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<ChipsResponse> getChips(String category) async {
    try {
      final response = await apiService.getChips(category: category);
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<LocationResponse> getLocationList() async {
    try {
      final response = await apiService.getLocationList();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<TypeProductResponse> getByTypeProductResponse(String type) async {
    try {
      final response = await apiService.getByTypeProducts(type: type);
      return response;
    } on DioException {
      rethrow;
    }
  }
}
