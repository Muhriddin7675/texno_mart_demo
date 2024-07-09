import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/utils/status.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/widget/widget.dart';
import '../../blocs/all_product/all_product_bloc.dart';
import '../../blocs/catalog/catalog_bloc.dart';
import '../../screen/all_product/by_category_all_product.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CatalogBloc()..add(CatalogEvent()),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black12),
                child: const Row(
                  children: [
                    SizedBox(width: 8),
                    Icon(Icons.search_rounded, color: Colors.black54),
                    SizedBox(width: 8),
                    Text("Sotib olish", style: TextStyle(fontSize: 16, color: Colors.black54))
                  ],
                ),
              ),
              BlocConsumer<CatalogBloc, CatalogPageState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state.status == Status.loading) {
                    return Expanded(child: getLoading());
                  } else if (state.status == Status.fail) {
                    return Expanded(child: Center(child: Text(state.errorMessage!)));
                  } else {
                    if (state.status == Status.success) {
                      var catalogList = state.catalogData?.data?.data!;
                      return Expanded(
                          child: ListView.builder(
                              itemCount: catalogList?.length ?? 0,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BlocProvider(
                                                  create: (context) => AllProductBloc()
                                                    ..add(AllProductEvent(category: catalogList?[index].slug ?? "", chipsIndex: -1))
                                                    ..add(LoadChipsList(category: catalogList?[index].slug ?? "")),
                                                  child: ByCategoryAllProduct(
                                                    categoryName: catalogList?[index].name ?? "",
                                                  ),
                                                )));
                                  },

                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                                        child: SvgPicture.network(
                                          catalogList?[index].icon ?? "",
                                          height: 32,
                                          width: 32,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(catalogList?[index].name ?? "", style: const TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black54,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 24)
                                    ],
                                  ),
                                );
                              }));
                    } else {
                      return const Expanded(child: Center(child: Text("Empty")));
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
