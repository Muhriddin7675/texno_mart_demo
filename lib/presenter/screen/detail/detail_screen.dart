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
import '../../../utils/widget/light_colors.dart';

class DetailScreen extends StatefulWidget {
  final String id;

  const DetailScreen({super.key, required this.id});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentPage = 0;
  final List<String> _moonList = ["0-0-6", "0-0-12", "12 oy", "18-oy", "24 oy"];
  final List<String> _moonSixImageList = ["assets/anorbank.png", "assets/tbcbank.png", "assets/axiom_nasiya.png"];
  final List<String> _moonTwelveImageList1 = ["assets/anorbank.png", "assets/tbcbank.png", "assets/axiom_nasiya.png", "assets/tehnoboon.png"];
  final List<String> _moonTwelveImageList2 = ["assets/solfy.jpg", "assets/alif.png"];
  final List<String> _moonTwentyFourImageList1 = ["assets/tbcbank.png", "assets/tehnoboon.png", "assets/anorbank.png", "assets/alif.png"];
  var activeItemIndex = 0;

  var activeMoonIndex = 0;
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
    Widget _activContainer({required int monthly, required int overall, required String image}) {
      return Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white, border: Border.all(width: 2, color: Colors.amber)),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      // 'assets/anorbank.png',
                      image,
                      height: 24,
                      width: 80,
                    ),
                    const Spacer(),
                    Text(
                      "oyiga ${formatInt(monthly)} so'm",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Jami",
                          style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "${formatInt(overall)} so'm",
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.black87),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                        child: Center(
                            child: Text(
                          "Rasmiylashtirish",
                          style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    }

    Widget _inactivContainer({required int monthly, required String image, required VoidCallback clickItem}) {
      return GestureDetector(
        onTap: clickItem,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 6),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white, border: Border.all(width: 1, color: Colors.black12)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        // 'assets/anorbank.png',
                        image,
                        height: 24,
                        width: 80,
                      ),
                      const Spacer(),
                      Text(
                        "oyiga ${formatInt(monthly)} so'm",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            )),
      );
    }
    Widget _buildInfoRow(String title) {
      return InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: LightColors.grey,
                size: 18,
              )
            ],
          ),
        ),
      );
    }

    Widget _buildAboutProductRow(String title, String power) {
      return InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Text(
                power,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      );
    }
    Widget _buildBehaviourSupports(IconData icon, String title) {
      return InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 24,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: LightColors.grey,
                  size: 18,
                )
              ],
            ),
          ),
        ),
      );
    }


    Widget _buildAllFeatures() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {
            // add to database
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
              color: LightColors.primary2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Center(
                child: Text(
                  "Barcha xususiyatlar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget _buildCommentsRow(int? reviews) {
      return InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.0),
          child: Row(
            children: [
              Text(
                'Sharhlar  ${reviews ?? 0}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(
                Icons.star_rate_sharp,
                color: LightColors.grey,
                size: 18,
              ),
              const Icon(
                Icons.star_rate_sharp,
                color: LightColors.grey,
                size: 18,
              ),
              const Icon(
                Icons.star_rate_sharp,
                color: LightColors.grey,
                size: 18,
              ),
              const Icon(
                Icons.star_rate_sharp,
                color: LightColors.grey,
                size: 18,
              ),
              const Icon(
                Icons.star_rate_sharp,
                color: LightColors.grey,
                size: 18,
              ),
              const SizedBox(
                width: 24,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: LightColors.grey,
                size: 18,
              )
            ],
          ),
        ),
      );
    }

    Widget _buildCustomDivider() {
      return const Divider(
        thickness: 8,
        color: LightColors.primary2,
      );
    }

    Widget _buildCustomThicknessDivider() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 1,
          color: LightColors.primary2,
        ),
      );
    }


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
                                  Text("${formatInt(productData?.salePrice ?? 0)} so'm", style: const TextStyle(fontSize: 24, color: Colors.black)),
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
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
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
                                margin: EdgeInsets.symmetric(vertical: 12),
                                width: double.infinity,
                                height: 34,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _moonList.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          activeMoonIndex = index;
                                          activeItemIndex = 0;
                                          setState(() {});
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 4),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              border: Border.all(width: 2, color: (activeMoonIndex == index) ? Colors.amber : Colors.black26)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                            child: Center(
                                              child: Text(
                                                _moonList[index],
                                                style: TextStyle(fontSize: 16, color: Colors.black45, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    })),
                            if (activeMoonIndex == 0)
                              Column(
                                children: List.generate(_moonSixImageList.length, (i) {
                                  if (activeItemIndex == i) {
                                    return _activContainer(
                                      monthly: (data.salePrice ?? 0) ~/ 6,
                                      overall: data.salePrice ?? 0,
                                      image: _moonSixImageList[i],
                                    );
                                  } else {
                                    return _inactivContainer(
                                      monthly: (data.salePrice ?? 0) ~/ 6,
                                      image: _moonSixImageList[i],
                                      clickItem: () {
                                        activeItemIndex = i;
                                        setState(() {});
                                      },
                                    );
                                  }
                                }),
                              ),
                            if (activeMoonIndex == 1)
                              Column(
                                children: List.generate(_moonTwelveImageList1.length, (i) {
                                  if (activeItemIndex == i) {
                                    return _activContainer(
                                      monthly: (data.salePrice ?? 0) ~/ 12,
                                      overall: data.salePrice ?? 0,
                                      image: _moonTwelveImageList1[i],
                                    );
                                  } else {
                                    return _inactivContainer(
                                      monthly: (data.salePrice ?? 0) ~/ 12,
                                      image: _moonTwelveImageList1[i],
                                      clickItem: () {
                                        activeItemIndex = i;
                                        setState(() {});
                                      },
                                    );
                                  }
                                }),
                              ),
                            if (activeMoonIndex == 2)
                              Column(
                                children: List.generate(_moonTwelveImageList2.length, (i) {
                                  if (activeItemIndex == i) {
                                    return _activContainer(
                                      monthly: (i == 0) ? ((data.salePrice ?? 0) * 1.18 ~/ 12) : ((data.salePrice ?? 0) * 1.23 ~/ 12),
                                      overall: (i == 0) ? ((data.salePrice ?? 0) * 1.18).toInt() : ((data.salePrice ?? 0) * 1.23).toInt(),
                                      image: _moonTwelveImageList2[i],
                                    );
                                  } else {
                                    return _inactivContainer(
                                      monthly: (i == 0) ? ((data.salePrice ?? 0) * 1.18 ~/ 12) : ((data.salePrice ?? 0) * 1.23 ~/ 12),
                                      image: _moonTwelveImageList2[i],
                                      clickItem: () {
                                        activeItemIndex = i;
                                        setState(() {});
                                      },
                                    );
                                  }
                                }),
                              ),
                            if (activeMoonIndex == 3)
                              _activContainer(
                                monthly: (data.salePrice ?? 0) * 1.4 ~/ 18,
                                overall: (data.salePrice ?? 0 * 1.4).toInt(),
                                image: "assets/tehnoboon.png",
                              ),
                            if (activeMoonIndex == 4)
                              Column(
                                children: List.generate(_moonTwentyFourImageList1.length, (i) {
                                  if (activeItemIndex == i) {
                                    return _activContainer(
                                      monthly: (i == 0)
                                          ? ((data.salePrice ?? 0) * 1.35 ~/ 24)
                                          : (i == 1)
                                              ? ((data.salePrice ?? 0) * 1.47 ~/ 24)
                                              : (i == 2)
                                                  ? ((data.salePrice ?? 0) * 1.52 ~/ 24)
                                                  : ((data.salePrice ?? 0) * 1.66 ~/ 24),
                                      overall: (i == 0)
                                          ? ((data.salePrice ?? 0) * 1.35).toInt()
                                          : (i == 1)
                                              ? ((data.salePrice ?? 0) * 1.47).toInt()
                                              : (i == 1)
                                                  ? ((data.salePrice ?? 0) * 1.52).toInt()
                                                  : ((data.salePrice ?? 0) * 1.66).toInt(),
                                      image: _moonTwentyFourImageList1[i],
                                    );
                                  } else {
                                    return _inactivContainer(
                                      monthly: (i == 0)
                                          ? ((data.salePrice ?? 0) * 1.35 ~/ 24)
                                          : (i == 1)
                                              ? ((data.salePrice ?? 0) * 1.47 ~/ 24)
                                              : (i == 2)
                                                  ? ((data.salePrice ?? 0) * 1.52 ~/ 24)
                                                  : ((data.salePrice ?? 0) * 1.66 ~/ 24),
                                      image: _moonTwentyFourImageList1[i],
                                      clickItem: () {
                                        activeItemIndex = i;
                                        setState(() {});
                                      },
                                    );
                                  }
                                }),
                              ),
                          ],
                        ),
                      ),
                      _buildInfoRow("Do'konlarda mavjudligi"),
                      _buildCustomThicknessDivider(),
                      _buildInfoRow("Xususiyatlari"),
                      _buildAboutProductRow('Brend', 'Aksion'),
                      _buildAboutProductRow('Unumdorligi', '0.5 kg/daq'),
                      _buildAboutProductRow('Quvvati', '220 Vt'),
                      _buildAllFeatures(),
                      _buildCommentsRow(data.reviewsCount),
                      _buildCustomDivider(),
                      _buildBehaviourSupports(Icons.check_box_outline_blank, 'Qanday qilib olish usullari:'),
                      _buildCustomThicknessDivider(),
                      _buildBehaviourSupports(Icons.credit_card_outlined, "Mahsulot to'lov usuli:"),
                      _buildCustomThicknessDivider(),
                      _buildBehaviourSupports(Icons.security_outlined, 'Kafolat'),
                      const SizedBox(height: 25,),
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

