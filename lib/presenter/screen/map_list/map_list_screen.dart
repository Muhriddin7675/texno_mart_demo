import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/screen/map/map_screen.dart';
import 'package:flutter_retrofit_texnomart/utils/my_text.dart';
import 'package:flutter_retrofit_texnomart/utils/status.dart';
import 'package:flutter_retrofit_texnomart/utils/widget/widget.dart';

import '../../blocs/map/map_screen_bloc.dart';
import '../../blocs/map_list/map_list_bloc.dart';

class MapListScreen extends StatefulWidget {
  const MapListScreen({super.key});

  @override
  State<MapListScreen> createState() => _MapListScreenState();
}

class _MapListScreenState extends State<MapListScreen> {
  var textSearchController = TextEditingController();
  var listCategory = [
    "Barchasi",
    "Andijon",
    "Qoraqalpog'",
    "Toshkent",
    "Buxoro",
    "Namangan",
    "Samarqand",
    "Surxondaryo",
    "Qashqadaryo",
    "Xorazm",
    "Toshkent",
    "Farg'ona"
  ];
  var categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        title: MyText.textBold("Do'konlar", Colors.black, 20),
        actions: [
          PopupMenuButton<int>(
            color: Colors.white,
            initialValue: categoryIndex,
            onSelected: (int index) {
              setState(() {
                categoryIndex = index;
              });
              context.read<MapListBloc>().add(LoadByCategoryMapListEvent(category: listCategory[index]));
            },
            itemBuilder: (BuildContext context) => List.generate(listCategory.length, (index) {
              return PopupMenuItem<int>(
                value: index,
                child: Text(listCategory[index]),
              );
            }),
            child: Row(
              children: [
                MyText.textNormal(listCategory[categoryIndex], Colors.black, 16),
                const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                const SizedBox(width: 16)
              ],
            ),
          ),
        ],
      ),
      body: BlocConsumer<MapListBloc, MapListState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          if (state.status == Status.loading) {
            return Center(
              child: getLoading(),
            );
          } else if (state.status == Status.fail) {
            return Center(
              child: MyText.textBold(state.errorMessage ?? "", Colors.black45, 16),
            );
          } else {
            if (state.status == Status.success) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffeeeff2)),
                        padding: const EdgeInsets.symmetric(horizontal: 12) + const EdgeInsets.only(top: 2),
                        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: Row(
                          children: [
                            const Icon(Icons.search_rounded, color: Colors.black45),
                            const SizedBox(width: 12),
                            Expanded(
                              child: TextField(
                                controller: textSearchController,
                                onChanged: (text) {
                                  context.read<MapListBloc>().add(SearchMapListEvent(searchText: text));
                                },
                                style: const TextStyle(color: Colors.black, fontSize: 16),
                                decoration: const InputDecoration(
                                    border: InputBorder.none, hintText: "Manzil", hintStyle: TextStyle(fontSize: 16, color: Colors.black45)),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const SizedBox(width: 16),
                        MyText.textBold(state.nameCategory ?? "", Colors.black, 18),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.allLocation?.length,
                        itemBuilder: (context, index) {
                          var data = state.allLocation![index];
                          return _item(
                              title: data.address ?? "",
                              workingTime: data.workTime ?? "",
                              clickItem: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (context) => MapScreenBloc(),
                                          child:  MapScreen(mapData: data),
                                        )));
                              });
                        })
                  ],
                ),
              );
            } else {
              return Center(
                child: MyText.textBold("empty", Colors.black, 16),
              );
            }
          }
        },
      ),
    );
  }

  Widget _item({required String title, required String workingTime, required VoidCallback clickItem}) {
    return InkWell(
      onTap: clickItem,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                    child: Image.asset(
                  "assets/marker.png",
                  width: 24,
                  height: 24,
                )),
                const SizedBox(width: 16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText.textBold(title, Colors.black, 16),
                    const SizedBox(
                      height: 4,
                    ),
                    MyText.textNormal("Du-Yak($workingTime)", Colors.black54, 14)
                  ],
                )),
                const Icon(Icons.keyboard_arrow_right_rounded, color: Colors.black38)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 0.6,
            width: double.infinity,
            color: Colors.black12,
          )
        ],
      ),
    );
  }


}
