import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdc202),
      body: Center(
        child:
        Image.asset("assets/icon.jpg",height: 36,width: 36)
      ),
    );
  }
}
