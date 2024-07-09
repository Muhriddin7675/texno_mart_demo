import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presenter/blocs/main/main_bloc.dart';
import '../../page/basket/basket_page.dart';
import '../../page/catlag/catalog_page.dart';
import '../../page/home/home_page.dart';
import '../../page/profil/profile_screen.dart';
import 'empty_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = CupertinoTabController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if (state.index != null) {
          _controller.index = state.index!;
        }
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            inactiveColor: Colors.black45,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 24,
                ),
                label: 'Bosh sahifa',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.manage_search_rounded,
                  size: 24,
                ),
                label: 'Katalog',
              ),
              BottomNavigationBarItem(
                icon: badges.Badge(
                  showBadge: state.notificationCount != 0,
                  badgeContent: Text("${state.notificationCount}"),
                  badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xfffdc202)),
                  child: const Icon(
                    Icons.shopping_cart_rounded,
                    size: 24,
                  ),
                ),
                label: "Savatcha",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.outdoor_grill,
                  size: 24,
                ),
                label: 'Buyurmalar',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 24,
                ),
                label: 'Profil',
              ),
            ],
          ),
          controller: _controller,
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: HomePage());
                });
                break;
              case 1:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: CatalogPage());
                });
                break;

              case 2:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: BasketPage());
                });
                break;

              case 3:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: EmptyScreen());
                });
                break;

              case 4:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: ProfilePage());
                });
                break;
              default:
                return const CupertinoTabView();
            }
          },
        );
      },
    );
  }
}

/*
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presenter/blocs/basket/basket_page_bloc.dart';
import '../../../presenter/blocs/main/main_bloc.dart';
import '../../page/basket/basket_page.dart';
import '../../page/catlag/catalog_page.dart';
import '../../page/home/home_page.dart';
import '../../page/profil/profile_screen.dart';
import 'empty_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: state.index,
              children: const [
                HomePage(),
                CatalogPage(),
                BasketPage(),
                EmptyScreen(),
                ProfileScreen(),
              ],
            ),
          ),
          extendBody: true,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black45,
            currentIndex: state.index,
            onTap: (index) {
              context.read<MainBloc>().add(MainEvent(index: index));
              if (index == 2) {
                context.read<BasketPageBloc>().add(GetAllBasketList());
                setState(() {});
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: (state.index == 0) ? Colors.black : Colors.black45,
                ),
                label: 'Bosh sahifa',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.manage_search_rounded,
                  color: (state.index == 1) ? Colors.black : Colors.black45,
                ),
                label: 'Katalog',
              ),
              BottomNavigationBarItem(
                icon: badges.Badge(
                  showBadge: state.notificationCount != 0,
                  badgeContent: Text("${state.notificationCount}"),
                  badgeStyle:
                      const badges.BadgeStyle(badgeColor: Color(0xfffdc202)),
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: (state.index == 2) ? Colors.black : Colors.black45,
                  ),
                ),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.outdoor_grill,
                  color: (state.index == 3) ? Colors.black : Colors.black45,
                ),
                label: 'Buyurmalar',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: (state.index == 4) ? Colors.black : Colors.black45,
                ),
                label: 'Profil',
              ),
            ],
          ),
        );
      },
    );
  }
}

 */
