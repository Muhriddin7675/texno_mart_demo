import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/model/favorite/favorite_model.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/all_product/all_product_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/main/main_bloc.dart';
import 'package:flutter_retrofit_texnomart/utils/widget/widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/sourse/remote/respons/type_product/type_product_response.dart';
import '../../../utils/status.dart';
import '../../blocs/home/home_page_bloc.dart';
import '../../screen/all_product/by_category_all_product.dart';
import '../../screen/detail/detail_screen.dart';
import 'item_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  final CarouselController _controller = CarouselController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<HomePageBloc, HomePageState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.status == Status.loading) {
              return getLoading();
            } else if (state.status == Status.fail) {
              return Center(
                child: Text(state.errorMessage.toString()),
              );
            } else {
              if (state.status == Status.success) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Container(
                            color: const Color(0xfffdc202),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("texnomart", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("*", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliverAppBar(
                        pinned: true,
                        snap: false,
                        expandedHeight: 68,
                        collapsedHeight: 68,
                        floating: false,
                        flexibleSpace: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xfffdc202),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
                              child: const Row(
                                children: [
                                  SizedBox(width: 8),
                                  Icon(Icons.search_rounded, color: Colors.black54),
                                  SizedBox(width: 8),
                                  Text("Sotib olish", style: TextStyle(fontSize: 16, color: Colors.black54))
                                ],
                              ),
                            ),
                          ),
                        )),
                    SliverToBoxAdapter(
                      child: CarouselSlider(
                        items: state.sliderResponse?.data?.data!
                            .map((item) => Container(
                                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                    child: Image.network(
                                      item.imageMobileWeb!,
                                      fit: BoxFit.fill,
                                      width: 1200,
                                    ),
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                            autoPlay: true,
                            onPageChanged: (value, _) {
                              setState(() {
                                currentPage = value;
                              });
                            },
                            viewportFraction: 0.9,
                            autoPlayInterval: const Duration(seconds: 3),
                            enlargeCenterPage: true,
                            height: 190),
                        carouselController: _controller,
                      ),
                    ),
                    if (state.sliderResponse != null && state.sliderResponse?.data != null && state.sliderResponse?.data?.data != null)
                      SliverToBoxAdapter(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < state.sliderResponse!.data!.data!.length; i++)
                            Container(
                              height: i == currentPage ? 10 : 10,
                              width: i == currentPage ? 10 : 10,
                              margin: const EdgeInsets.all(6),
                              decoration: BoxDecoration(color: i == currentPage ? Colors.black : Colors.grey, shape: BoxShape.circle),
                            )
                        ],
                      )),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              children: [
                                const Text("Ommabop kategoriyalar", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    print("hello");
                                    context.read<MainBloc>().add(LoadByIndexMainBottomNavigator(index: 1));
                                  },
                                  child: const Text("hammasi", style: TextStyle(fontSize: 16, color: Colors.black54)),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black54,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.specialCategories?.data?.data?.length ?? 0,
                                itemBuilder: (context, index) {
                                  var item = state.specialCategories?.data?.data?[index];
                                  if (item == null) {
                                    return const SizedBox.shrink(); // Yoki boshqa bir default vidjet qaytaring
                                  }
                                  return SizedBox(
                                    width: 112,
                                    height: 116,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => BlocProvider(
                                                      create: (context) => AllProductBloc()
                                                        ..add(AllProductEvent(category: item.slug ?? "", chipsIndex: -1))
                                                        ..add(LoadChipsList(category: item.slug ?? "")),
                                                      child: ByCategoryAllProduct(
                                                        categoryName: item.title ?? "",
                                                      ),
                                                    )));
                                      },
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 96,
                                            width: 106,
                                            child: Card(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                              elevation: 1,
                                              child: Center(
                                                child:
                                                    item.image != null ? SvgPicture.network(item.image!) : Container(), // yoki boshqa default vidjet
                                              ),
                                            ),
                                          ),
                                          Text(
                                            item.title != null && item.title!.length > 11 ? "${item.title!.substring(0, 11)}..." : item.title ?? '',
                                            style: const TextStyle(fontSize: 14, color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const SizedBox(width: 4);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          if ((state.newProductData ?? []).isNotEmpty)
                            _categoryItem(categoryName: "Tavsiya etilgan mahsulotlar", productDataList: state.newProductData!, clickAll: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => AllProductBloc()
                                          ..add(AllProductEvent(category: "", chipsIndex: -1))
                                          ..add(LoadChipsList(category: "")),
                                        child: const ByCategoryAllProduct(
                                          categoryName: "Tavsiya etilgan mahsulotlar",
                                        ),
                                      )));
                            }),
                          if ((state.xitProductData ?? []).isNotEmpty)
                            _categoryItem(categoryName: "Xit savdo", productDataList: state.xitProductData!, clickAll: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => AllProductBloc()
                                          ..add(AllProductEvent(category: "hity-prodazh", chipsIndex: -1))
                                          ..add(LoadChipsList(category: "hity-prodazh")),
                                        child: const ByCategoryAllProduct(
                                          categoryName: "Xit savdo",
                                        ),
                                      )));

                            }),
                          if ((state.climateProductData ?? []).isNotEmpty)
                            _categoryItem(categoryName: "Tanlovlar", productDataList: state.climateProductData!, clickAll: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => AllProductBloc()
                                          ..add(AllProductEvent(category: "", chipsIndex: -1))
                                          ..add(LoadChipsList(category: "")),
                                        child: const ByCategoryAllProduct(
                                          categoryName: "Tanlovlar",
                                        ),
                                      )));

                            }),
                        ],
                      ),
                    )
                  ],
                );
              } else {
                return const Text("Empty");
              }
            }
          },
        ),
      ),
    );
  }

  Widget _categoryItem({required String categoryName, required List<ProductData> productDataList,required VoidCallback clickAll}) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Text(categoryName, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
              const Spacer(),
              GestureDetector(
                  onTap: clickAll,
                  child: const Text("hammasi", style: TextStyle(fontSize: 16, color: Colors.black54))),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black54,
                size: 16,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: productDataList.length ?? 0,
              itemBuilder: (context, index) {
                var item = productDataList[index];
                return itemProduct(
                    item,
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    id: "${item.id ?? 100}",
                                  )));
                    },
                    MyHiveHelper.isHasFavorite("${item.id}"),
                    () {
                      if (MyHiveHelper.isHasFavorite("${item.id}")) {
                        MyHiveHelper.removeFavorite("${item.id}");
                        context.read<HomePageBloc>().add(GetFavoriteEvent());
                      } else {
                        MyHiveHelper.addFavorite(FavoriteModel("${item.id}", true, item.name ?? "", item.image ?? "", "${item.salePrice}"));
                        context.read<HomePageBloc>().add(GetFavoriteEvent());
                      }
                    });
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 4);
              },
            ),
          ),
        ),
      ],
    );
  }
}
