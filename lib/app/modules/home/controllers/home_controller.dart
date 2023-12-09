// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter_kuldii_project_ui_instagram/app/modules/home/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/home.dart';
import '../widgets/search.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

    List<Widget> pagesWidget = [
    HomeWidget(),
    SearchWidget(),
    Center(
      child: Text(
        'Reels',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Shop',
        style: TextStyle(fontSize: 20),
      ),
    ),
    ProfileWidget()
  ];
}
