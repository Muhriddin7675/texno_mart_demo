import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/presenter/page/basket/dialog_delete_thinks.dart';
import 'package:flutter_retrofit_texnomart/utils/nuber_format.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/model/favorite/favorite_model.dart';
import '../../../utils/status.dart';
import '../../../utils/widget/widget.dart';
import '../../blocs/basket/basket_page_bloc.dart';
import '../../blocs/main/main_bloc.dart';
import '../../screen/detail/detail_screen.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  var isCheckedAll = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xfffdc202),
          title: const Text("Savatcha", style: TextStyle(fontSize: 20, color: Colors.black)),
        ),
        body: BlocConsumer<BasketPageBloc, BasketPageState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.status == Status.loading) {
              return getLoading();
            } else if (state.status == Status.fail) {
              return Center(child: Text(state.errorMessage!));
            } else {
              if (state.status == Status.success) {
                if (state.basketModel.isEmpty) {
                 return  Center(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SvgPicture.asset('assets/empty_basket_icon.svg', height: 56, width: 56),
                       const SizedBox(height: 12),
                       Text(
                         "Savatada hali hech narsa yo'q",
                         style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                       ),
                       GestureDetector(
                         onTap: () {
                           context.read<MainBloc>().add(LoadByIndexMainBottomNavigator(index: 1));
                         },
                         child: Container(
                             margin: const EdgeInsets.all(16),
                             padding: const EdgeInsets.all(12),
                             decoration: BoxDecoration(
                               color: const Color(0xfffdc202),
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Text(
                               "Xarid qilishga o'ting",
                               style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                             )),
                       )
                     ],
                   ),
                 );
                } else {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24.0),
                            child: Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext ctx) {
                                            return Dialog(
                                              elevation: 0.0,
                                              backgroundColor: Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: dialogDeleteThinks(clickDelete: () {
                                                Navigator.pop(ctx);

                                                for (var data in state.basketModel) {
                                                  print("abaut prodcut data  isCheck  ${data.isChecked}  ${data.name} ");
                                                  if (data.isChecked) {
                                                    MyHiveHelper.removeBasket(data.productId);
                                                  }
                                                }
                                                context.read<MainBloc>().add(SetBasketNotificationCount());
                                                context.read<BasketPageBloc>().add(GetAllBasketList());
                                              }, clickCancel: () {
                                                Navigator.pop(ctx);
                                              }),
                                            );
                                          });
                                    },
                                    child: Text("Tanlanganlarni o'chirish", style: TextStyle(fontSize: 14, color: Colors.black45))),
                                const Spacer(),
                                const Text("Hammasini tanlash", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: (isCheckedAll)
                                        ? GestureDetector(
                                            onTap: () {
                                              for (var item in state.basketModel) {
                                                item.isChecked = false;
                                                item.save();
                                              }
                                              isCheckedAll = false;
                                              context.read<BasketPageBloc>().add(GetAllBasketList());
                                            },
                                            child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xfffdc202)),
                                                child: const Icon(
                                                  Icons.check,
                                                  color: Colors.black,
                                                  size: 18,
                                                )),
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              for (var item in state.basketModel) {
                                                item.isChecked = true;
                                                item.save();
                                              }
                                              isCheckedAll = true;
                                              context.read<BasketPageBloc>().add(GetAllBasketList());
                                            },
                                            child: Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 1, color: Colors.black54),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 0.6,
                            color: Colors.black12,
                          ),
                          if (state.basketModel.isNotEmpty)
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.allProduct.length,
                                itemBuilder: (context, index) {
                                  var item = state.allProduct[index];
                                  var basketModel = state.basketModel[index];

                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailScreen(
                                                    id: item.id,
                                                  )));
                                    },
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 16.0),
                                              child: Image.network(
                                                item.image,
                                                height: 70,
                                                width: 100,
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                          child: Text(
                                                        item.name,
                                                        maxLines: 2,
                                                        style: const TextStyle(fontSize: 14, color: Colors.black),
                                                      )),
                                                      const SizedBox(width: 16),
                                                      GestureDetector(
                                                        onTap: () {
                                                          basketModel.isChecked = false;
                                                          basketModel.save();
                                                          context.read<BasketPageBloc>().add(GetAllBasketList());
                                                        },
                                                        child: Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                                          child: (basketModel.isChecked)
                                                              ? Container(
                                                                  height: 20,
                                                                  width: 20,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(6), color: const Color(0xfffdc202)),
                                                                  child: const Icon(
                                                                    Icons.check,
                                                                    color: Colors.black,
                                                                    size: 18,
                                                                  ))
                                                              : GestureDetector(
                                                                  onTap: () {
                                                                    basketModel.isChecked = true;
                                                                    basketModel.save();
                                                                    context.read<BasketPageBloc>().add(GetAllBasketList());
                                                                  },
                                                                  child: Container(
                                                                    height: 20,
                                                                    width: 20,
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(width: 1, color: Colors.black54),
                                                                      borderRadius: BorderRadius.circular(6),
                                                                    ),
                                                                  ),
                                                                ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 24),
                                                  Text(
                                                    "${formatInt(basketModel.price * basketModel.count)} so'm",
                                                    style: const TextStyle(fontSize: 18, color: Colors.black),
                                                  ),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(6),
                                                            border: Border.all(width: 1, color: Colors.black12),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  if (basketModel.count > 1) {
                                                                    basketModel.count -= 1;
                                                                    context.read<BasketPageBloc>().add(GetAllBasketList());
                                                                  }
                                                                },
                                                                child: Container(
                                                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                                                                  color: Colors.transparent,
                                                                  child: const Icon(
                                                                    Icons.remove,
                                                                    color: Colors.black,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                basketModel.count.toString(),
                                                                style: const TextStyle(fontSize: 16, color: Colors.black),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  if (basketModel.count < 10) {
                                                                    basketModel.count += 1;
                                                                    context.read<BasketPageBloc>().add(GetAllBasketList());
                                                                  }
                                                                },
                                                                child: Container(
                                                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                                                                  color: Colors.transparent,
                                                                  child: const Icon(
                                                                    Icons.add,
                                                                    color: Colors.black,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                          onPressed: () {
                                                            if (state.allProduct[index].isFav) {
                                                              MyHiveHelper.removeFavorite(state.allProduct[index].id);
                                                              context.read<BasketPageBloc>().add(GetAllBasketList());
                                                            } else {
                                                              MyHiveHelper.addFavorite(FavoriteModel(
                                                                state.allProduct[index].id,
                                                                true,
                                                                state.allProduct[index].name ?? "",
                                                                state.allProduct[index].image ?? "",
                                                                "${item.price}",
                                                              ));
                                                              context.read<BasketPageBloc>().add(GetAllBasketList());
                                                            }
                                                          },
                                                          icon: Icon(
                                                            (item.isFav) ? Icons.favorite : Icons.favorite_outline,
                                                            color: Colors.black,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        IconButton(
                                                          onPressed: () {
                                                            MyHiveHelper.removeBasket(state.allProduct[index].id);
                                                            context.read<MainBloc>().add(SetBasketNotificationCount());
                                                            context.read<BasketPageBloc>().add(GetAllBasketList());
                                                          },
                                                          icon: const Icon(
                                                            Icons.delete_outline,
                                                            color: Colors.black26,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 0.6,
                                          color: Colors.black12,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          const SizedBox(height: 24),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black12,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Jami", style: TextStyle(fontSize: 18, color: Colors.black)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                                    child: Row(
                                      children: [
                                        Text("${state.allProductCount} ta mahsulot", style: const TextStyle(fontSize: 14, color: Colors.black54)),
                                        const Spacer(),
                                        Text("${formatInt(state.allProductSum)} so'm", style: const TextStyle(fontSize: 14, color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text("To'lash uchun", style: TextStyle(fontSize: 18, color: Colors.black)),
                                      const Spacer(),
                                      Text("${formatInt(state.allProductSum)} so'm", style: const TextStyle(fontSize: 18, color: Colors.black)),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: (state.allProductCount != 0) ? const Color(0xfffdc202) : const Color(0xfff8da79),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Haridni rasmiylashtirish",
                                          style: TextStyle(color: Colors.black, fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black12,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: const Color(0xfff2f2f2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text("Muddatli to'lov ", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                              Text(
                                                "${formatInt((state.allProductSum * 1.36 ?? 1) ~/ 24)} so'm dan",
                                                style: const TextStyle(fontSize: 18, color: Colors.black),
                                              ),
                                              const Text(" / 24 oy ", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: (state.allProductCount != 0) ? Colors.black : Colors.black45,
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Muddatli to'lovni rasmiylashtirish",
                                            style: TextStyle(color: Colors.white, fontSize: 16),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }
              else {
                return const Center(child: Text("Empty"));
              }
            }
          },
        ),
      ),
    );
  }
}
