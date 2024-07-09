import 'package:flutter/material.dart';
import 'package:flutter_retrofit_texnomart/data/model/favorite/favorite_model.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/new_product/new_product_response.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/remote/respons/product_all_category/product_all_category.dart';
import 'package:flutter_retrofit_texnomart/utils/nuber_format.dart';

Widget itemFavorite(FavoriteModel data,VoidCallback clickItem,bool isFavorite,VoidCallback clickFavorite,bool isBasket ,VoidCallback clickBasket) {
  return GestureDetector(
    onTap: clickItem,
    child: Container(
      width: 180,
      height: 350,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white24),
        boxShadow: const [
          BoxShadow(
              offset: Offset(1.0, 1.0),
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1),
          BoxShadow(
              offset: Offset(1.0, 1.0),
              color: Colors.white,
              blurRadius: 10,
              spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Center(
                  child: Image.network(
                    data.image ?? "https://mini-io-api.texnomart.uz/catalog/product/1008/100871/178232/319c516d-da8e-4ee3-a06f-f4194a3abe0f-medium.jpg",
                    height: 150,
                    width: 200,
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(6)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2),
                    child: Text(
                      "Xit savdo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                width: 200,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 2),
                      child: Text(
                        "0-0-12",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                          border: Border.all(width: 0.6, color: Colors.black45)),
                      child: InkWell(
                        onTap: clickFavorite,
                        child: Icon(
                          (isFavorite)
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
          Text(
            data?.name ?? '',
            maxLines: 2,
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              SizedBox(width: 8,),
              Text(data.productId.toString() ?? '0',style: TextStyle(fontSize: 14),)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xfff2f2f2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 3),
              child: Text(
                maxLines: 1,
                "${formatInt((int.parse(data.price) ?? 1) ~/24)} so'mdan / 24 oy",style: const TextStyle(fontSize: 10),),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xfffdf1ce),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 3),
              child: Text(
                maxLines: 1,
                "${formatInt((int.parse(data.price) ?? 1) ~/12)} so'mdan / 0*0*12",style: const TextStyle(fontSize: 10),),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${formatInt(int.parse(data.price) ?? 1)} so'm",style: TextStyle(fontSize: 14,color: Colors.black),),
              Spacer(),
              Container(
                height: 28,
                width: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(width: 1.6, color: Color(0xfffdc202))),
                child: InkWell(
                  onTap: clickBasket,
                  child: Icon(
                    (isBasket) ? Icons.shopping_cart_checkout
                        : Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              )

            ],
          )
        ],
      ),
    ),
  );
}
