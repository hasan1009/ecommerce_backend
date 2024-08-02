import 'package:ecom_backend/screens/category/category_page.dart';
import 'package:ecom_backend/screens/coupon/coupon_page.dart';
import 'package:ecom_backend/screens/dashboard/dashboard.dart';
import 'package:ecom_backend/screens/product/product_page.dart';
import 'package:ecom_backend/screens/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class MyDrawerController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  RxList<Widget> pages = const [
    DashBoard(),
    ProductPage(),
    CategoryPage(),
    CouponPage(),
    SettingsPage()
  ].obs;

  void selectedMenu(int index) {
    selectedPageIndex.value = index;
    update();
  }
}
