import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_retrofit_texnomart/data/sourse/local/my_hive_helper.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/basket/basket_page_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/home/home_page_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/main/main_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/blocs/profil/profile_page_bloc.dart';
import 'package:flutter_retrofit_texnomart/presenter/screen/main/main_screen.dart';

import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyHiveHelper.init();
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Color(0xfffdc202)));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfffdc202)),
        primarySwatch: Colors.amber,
        primaryColor: const Color(0xfffdc202),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomePageBloc()..add(GetSliderEvent())),
          BlocProvider(create: (context) => MainBloc()..add(LoadByIndexMainBottomNavigator(index: 0))),
          BlocProvider(create: (context) => BasketPageBloc()..add(GetAllBasketList())),
          BlocProvider(create: (context) => ProfilePageBloc()),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
