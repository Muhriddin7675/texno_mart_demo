import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/basket/basket_page_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/detail/detail_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/main/main_bloc.dart';
import 'package:flutter_retrofit_texnomart/utils/status.dart';
import 'package:flutter_retrofit_texnomart/utils/widget/widget.dart';

import '../../../data/model/basket/basket_model.dart';
import '../../../data/model/favorite/favorite_model.dart';
import '../../../utils/nuber_format.dart';

class DetailScreen extends StatefulWidget {
  final String id;

  const DetailScreen({super.key, required this.id});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentPage = 0;
  var bloc = DetailBloc();
  final CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    bloc.add(LoadDetailEvent(id: widget.id));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<DetailBloc, DetailScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == Status.loading) {
            return Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: const Color(0xfffdc202),
                  leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.black)),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.scale_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.black,
                          size: 20,
                        ))
                  ],
                ),
                body: getLoading());
          } else if (state.status == Status.fail) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: const Color(0xfffdc202),
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back, color: Colors.black)),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                        size: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.scale_outlined,
                        color: Colors.black,
                        size: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: Colors.black,
                        size: 20,
                      ))
                ],
              ),
              body: Center(
                child: Text(state.errorMessage!),
              ),
            );
          } else {
            if (state.status == Status.success) {
              var listImage = state.productData?.data?.data?.smallImages ?? [];
              var productData = state.productData?.data?.data!;
              var data = state.productData!.data!.data;

              return Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: const Color(0xfffdc202),
                  leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.black)),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.scale_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: () {
                          if (MyHiveHelper.isHasFavorite("${data.id}")) {
                            MyHiveHelper.removeFavorite("${data.id}");
                            context.read<DetailBloc>().add(GetDetailEvent());
                          } else {
                            MyHiveHelper.addFavorite(FavoriteModel("${data.id}", true, data.name ?? "", data.largeImages![0], "${data.salePrice}"));
                            context.read<DetailBloc>().add(GetDetailEvent());
                          }
                        },
                        icon: (MyHiveHelper.isHasFavorite(data!.id.toString()))
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.black,
                                size: 20,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.black,
                                size: 20,
                              ))
                  ],
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CarouselSlider(
                            items: (listImage)
                                .map((item) => Container(
                                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(Radius.circular(7.0)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(24.0),
                                          child: Image.network(
                                            item,
                                            width: 1200,
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                                autoPlay: false,
                                onPageChanged: (value, _) {
                                  setState(() {
                                    currentPage = value;
                                  });
                                },
                                viewportFraction: 0.8,
                                enlargeCenterPage: true,
                                height: 220),
                            carouselController: _carouselController,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                                  child: Text(
                                    "Xit savdo",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: SizedBox(
                              height: 220,
                              width: 180,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(6)),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                                    child: Text(
                                      "0-0-12",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < listImage.length; i++)
                            Container(
                              height: i == currentPage ? 10 : 10,
                              width: i == currentPage ? 10 : 10,
                              margin: const EdgeInsets.all(6),
                              decoration: BoxDecoration(color: i == currentPage ? Colors.black : Colors.grey, shape: BoxShape.circle),
                            )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            const Text(
                              "Mavjud",
                              style: TextStyle(fontSize: 14, color: Colors.greenAccent),
                            ),
                            const Spacer(),
                            Text(
                              "Art. ${productData?.code ?? ""}",
                              style: const TextStyle(fontSize: 14, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          productData?.seo?.title ?? "",
                          style: const TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: 140,
                          width: double.infinity,
                          decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black12), borderRadius: BorderRadius.circular(16)),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child:
                                  Text("${formatInt(productData?.loanPrice ?? 0)} so'm", style: const TextStyle(fontSize: 24, color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: (!MyHiveHelper.isHasBasket(data.id.toString()))
                                  ? GestureDetector(
                                      onTap: () {
                                        MyHiveHelper.addBasket(
                                            BasketModel("${data.id}", data.name ?? "", data.largeImages![0], data.salePrice ?? 0, 1, true));
                                        context.read<DetailBloc>().add(GetDetailEvent());
                                        context.read<MainBloc>().add(SetBasketNotificationCount());
                                        context.read<BasketPageBloc>().add(GetAllBasketList());
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: const Color(0xfffdc202),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "Savatga qo'shish",
                                              style: TextStyle(color: Colors.black, fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        context.read<MainBloc>().add(LoadByIndexMainBottomNavigator(index: 2));
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 52,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            color: Colors.white,
                                            border: Border.all(
                                              width: 2,
                                              color: const Color(0xfffdc202),
                                            )),
                                        child: const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_checkout,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "Savatda",
                                              style: TextStyle(color: Colors.black, fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                            )
                          ]),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "To'lov variantlari",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                    Spacer(),
                                    Icon(Icons.info_outline)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15), color: Colors.white, border: Border.all(color: Colors.amber)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/anorbank.png',
                                            height: 30,
                                            width: 100,
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "oyiga 309 834 so'm",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 1,
                                        color: Colors.black12,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Jami",
                                                  style: TextStyle(color: Colors.black38, fontSize: 14),
                                                ),
                                                Text(
                                                  "1 859 000 so'm",
                                                  style: TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 15),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width / 3,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black54),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child: Center(
                                                    child: Text(
                                                  "Rasmiylashtirish",
                                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                                )),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
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

/*
backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xfffdc202),
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, color: Colors.black)),
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.scale_outlined,
                  color: Colors.black,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                  size: 20,
                ))
          ],
        ),
 */
