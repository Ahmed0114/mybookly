import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_bookly/core/constants.dart';
import 'package:my_bookly/core/utils.dart';
import 'package:my_bookly/feature/home/data/presentation/viewmodels/views/home_view.dart';
import 'package:my_bookly/feature/splash/data/presentation/viewmodels/views/widgets/sliding_text.dart';

class splash_view_body extends StatefulWidget {
  const splash_view_body({Key? key}) : super(key: key);

  @override
  State<splash_view_body> createState() => _splash_view_bodyState();
}

class _splash_view_bodyState extends State<splash_view_body>with SingleTickerProviderStateMixin {
  late AnimationController aC;
  late Animation<Offset> a;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    intilslider();
    navigatetohome();
  }

  void navigatetohome() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to( home_view(),transition: Transition.downToUp,duration: KNavgationduration);
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    aC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          SizedBox(
            height: 6,
          ),
          silderingtext(a: a)
        ]);
  }
  void intilslider() {
    aC = AnimationController(vsync: this, duration: Duration(seconds: 1));
    a = Tween<Offset>(begin: (Offset(0, 10)), end: Offset.zero).animate(
        aC);
    aC.forward();
  }



}


