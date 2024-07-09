import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/model/basket/basket_model.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/all_product/all_product_bloc.dart';

import '../../../data/model/favorite/favorite_model.dart';
import '../../../data/sourse/local/my_hive_helper.dart';
import '../../../utils/status.dart';
import '../../../utils/widget/widget.dart';
import '../../blocs/basket/basket_page_bloc.dart';
import '../../blocs/main/main_bloc.dart';
import '../detail/detail_screen.dart';
import 'item_all_product.dart';

class ByCategoryAllProduct extends StatefulWidget {
  final String categoryName;

  const ByCategoryAllProduct({super.key, required this.categoryName});

  @override
  State<ByCategoryAllProduct> createState() => _ByCategoryAllProductState();
}

class _ByCategoryAllProductState extends State<ByCategoryAllProduct> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllProductBloc, AllProductState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              ),
              title: Text(
                widget.categoryName,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  BlocBuilder<AllProductBloc, AllProductState>(
                    builder: (context, state) {
                      if (state.chipsStatus == Status.success) {
                        return ChipList(
                          listOfChipNames: state.chipsNameList!,
                          activeBgColorList: [Color(0xfffdf1ce)],
                          inactiveBgColorList: const [
                            Color(0xfff2f2f2),
                          ],
                          activeTextColorList: const [Colors.black],
                          inactiveTextColorList: const [Colors.black],
                          listOfChipIndicesCurrentlySelected: [state.chipsIndex ?? -1],
                          runSpacing: 10,
                          spacing: 10,
                          extraOnToggle: (val) {
                            context.read<AllProductBloc>().add(AllProductEvent(category: state.chipsListData![val].slug ?? "", chipsIndex: val));
                          },
                        );
                      } else {
                        return  Container(height: 30);
                      }
                    },
                  ),
                  Expanded(
                    child: BlocBuilder<AllProductBloc, AllProductState>(
                      builder: (context, state) {
                        if(state.allProductStatus == Status.loading){
                          return getLoading();
                        }else if( state.allProductStatus == Status.fail) {
                          return Center(child: Text(state.errorMessage!));
                        }else{
                         if(state.allProductStatus == Status.success){
                           var listProduct = state.allProduct?.data?.products ?? [];
                           return GridView.builder(
                             itemCount: listProduct.length,
                             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount: 2,
                               childAspectRatio: 3 / 5.3,
                             ),
                             itemBuilder: (context, index) {
                               return itemAllProduct(
                                 listProduct![index],
                                     () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) =>
                                           DetailScreen(
                                             id: "${listProduct[index].id ?? 100}",
                                           ),
                                     ),
                                   );
                                 },
                                 MyHiveHelper.isHasFavorite("${listProduct[index].id}"),
                                     () {
                                   if (MyHiveHelper.isHasFavorite("${listProduct[index].id}")) {
                                     MyHiveHelper.removeFavorite("${listProduct[index].id}");
                                     context.read<AllProductBloc>().add(GetAllProductFavorite());
                                   } else {
                                     MyHiveHelper.addFavorite(
                                       FavoriteModel(
                                         "${listProduct[index].id}",
                                         true,
                                         listProduct[index].name ?? "",
                                         listProduct[index].image ?? "",
                                         "${listProduct[index].salePrice}",
                                       ),
                                     );
                                     context.read<AllProductBloc>().add(GetAllProductFavorite());
                                   }
                                 },
                                 MyHiveHelper.isHasBasket("${listProduct[index].id}"),
                                     () {
                                   if (!MyHiveHelper.isHasBasket("${listProduct[index].id}")) {
                                     MyHiveHelper.addBasket(
                                       BasketModel(
                                         "${listProduct[index].id}",
                                         listProduct[index].name ?? "",
                                         listProduct[index].image ?? "",
                                         listProduct[index].salePrice ?? 0,
                                         1,
                                         true,
                                       ),
                                     );
                                     context.read<AllProductBloc>().add(GetAllProductFavorite());
                                     context.read<MainBloc>().add(SetBasketNotificationCount());
                                     context.read<BasketPageBloc>().add(GetAllBasketList());

                                   } else {
                                     context.read<MainBloc>().add(LoadByIndexMainBottomNavigator(index: 2));
                                   }
                                 },
                               );
                             },
                           );
                         } else{
                           return const Center(child:Text("Empty"));
                         }
                        }
                      },
                    ),
                  ),
                ],
              ),
            )


        );
      },
    );
  }
}

/*
  backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfffdc202),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          "Mahsulotlar",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
 */
