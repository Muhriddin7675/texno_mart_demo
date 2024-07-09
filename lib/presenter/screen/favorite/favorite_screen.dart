import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/model/basket/basket_model.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/model/favorite/favorite_model.dart';
import '../../../data/sourse/local/my_hive_helper.dart';
import '../../../presenter/blocs/favorite/favorite_bloc.dart';
import '../../../utils/status.dart';
import '../../../utils/widget/widget.dart';
import '../../blocs/basket/basket_page_bloc.dart';
import '../../blocs/main/main_bloc.dart';
import '../detail/detail_screen.dart';
import 'item_favorite.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xfffdc202),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          "Sevimlilar",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: BlocConsumer<FavoriteBloc, FavoriteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state.status == Status.loading) {
            return getLoading();
          } else if (state.status == Status.fail) {
            return Center(
              child: Text(state.errorMessage!),
            );
          } else {
            if (state.status == Status.success) {
              var listProduct = state.allProduct ?? [];
              if(listProduct.isEmpty){
                return  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/empty_basket_icon.svg', height: 56, width: 56),
                      const SizedBox(height: 12),
                      Text(
                        "Sevimlilar ro'yxati bo'sh",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize : 18, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 8),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Sevimli mahsulotlaringizni keyinroq ko'rish yoki sotib olish uchun ularni sevimlilaringizga qo'shing",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize : 16,fontWeight: FontWeight.bold,color: Colors.black54),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<MainBloc>().add(LoadByIndexMainBottomNavigator(index: 1));
                          Navigator.pop(context);

                        },
                        child: Container(
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xfffdc202),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Mahsulotlarni ko'rish",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                );
              }
              else{
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: listProduct?.length ?? 0,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3 / 5.3),
                      itemBuilder: (context, index) {
                        return itemFavorite(
                            listProduct![index],
                                () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen(
                                        id: "${listProduct[index].productId ?? 100}",
                                      )));
                            },
                            MyHiveHelper.isHasFavorite(listProduct[index].productId),
                                () {
                              if (MyHiveHelper.isHasFavorite(listProduct[index].productId)) {
                                MyHiveHelper.removeFavorite(listProduct[index].productId);
                                context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
                              } else {
                                MyHiveHelper.addFavorite(FavoriteModel(listProduct[index].productId, true, listProduct[index].name ?? "",
                                    listProduct[index].image ?? "", listProduct[index].price));
                                context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
                              }
                            },
                            MyHiveHelper.isHasBasket(listProduct[index].productId),
                                () {
                              if (!MyHiveHelper.isHasBasket(listProduct[index].productId)) {
                                MyHiveHelper.addBasket(BasketModel(listProduct[index].productId, listProduct[index].name ?? "",
                                    listProduct[index].image ?? "", int.parse(listProduct[index].price) ?? 0, 1, true));
                                context.read<FavoriteBloc>().add(GetAllFavoriteEvent());
                                context.read<MainBloc>().add(SetBasketNotificationCount());
                                context.read<BasketPageBloc>().add(GetAllBasketList());

                              } else {
                                context.read<MainBloc>().add(LoadByIndexMainBottomNavigator(index: 2));
                              }
                            });
                      }),
                );
              }
            }
            return const Center(
              child: Text("empty"),
            );
          }
        },
      ),
    );
  }
}
