import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

Widget getLoading(){
  return Container(
      alignment: Alignment.center,
      child: Lottie.asset("assets/lotte/loading.json",
          width: 56, height: 56));
}