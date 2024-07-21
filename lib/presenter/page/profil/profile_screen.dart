import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/favorite/favorite_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/map_list/map_list_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/screen/map_list/map_list_screen.dart';

import '../../screen/favorite/favorite_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
            child: Text("Xarid qilish, buyurmalrni kuzatish va bo'lib-bo'lib to'lash uchun tizimiga kiring",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xfffdc202)),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  "Kirish",
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.percent),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Aksiya',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded, size: 20)
                        ],
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                        create: (context) => FavoriteBloc()..add(GetAllFavoriteEvent()),
                                        child: const FavoriteScreen(),
                                      )));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.favorite_outline_rounded),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Sevimli',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.compare),
                          SizedBox(width: 8),
                          Text(
                            'Taqqoslash',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.language),
                          SizedBox(width: 8),
                          Text(
                            'Ilova tili',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                        create: (context) => MapListBloc()..add(LoadMapListEvent()),
                                        child: const MapListScreen(),
                                      )));*/
                          Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => MapListBloc()..add(LoadMapListEvent()),
                                child: const MapListScreen(),
                              )));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.shop),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Bizning do\'konlarimiz',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20)
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.message),
                          SizedBox(width: 8),
                          Text(
                            'Qo\'llab quvvatlash',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.info),
                          SizedBox(width: 8),
                          Text(
                            'Malumot',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.phone_android),
                          SizedBox(width: 8),
                          Text(
                            'Ilova haqida',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.notifications_none),
                          SizedBox(width: 8),
                          Text(
                            'Bildirishnoma sozlamalari',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Ilova veriyasi 1.0.0'),
          ),
          const Spacer()
        ],
      )),
      backgroundColor: Colors.white,
    );
  }
}
