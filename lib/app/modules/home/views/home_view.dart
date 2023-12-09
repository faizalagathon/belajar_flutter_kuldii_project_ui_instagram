// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.pagesWidget.elementAt(controller.indexWidget.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) => controller.changeIndexBottomNav(value),
          // backgroundColor: Colors.red,
          // type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.video_collection_outlined,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.shop_outlined,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                )),
          ]),
    );
  }
}
