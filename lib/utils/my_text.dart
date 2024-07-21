import 'package:flutter/cupertino.dart';

class MyText{
  static Widget textNormal(String text, Color color,double size){
    return Text(text,style: TextStyle(fontSize: size,color: color,fontWeight: FontWeight.normal));
  }


  static Widget textBold(String text, Color color,double size){
    return Text(text,style: TextStyle(fontSize: size,color: color,fontWeight: FontWeight.bold));
  }
}