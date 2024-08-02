import 'package:ecom_backend/config/app_image.dart';
import 'package:ecom_backend/controllers/drawer_controller.dart';
import 'package:ecom_backend/screens/web/dashboard/dashboard.dart';
import 'package:ecom_backend/views/dshboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/my_app_bar.dart';
import '../../../widgets/my_drawer-menu.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyDrawerController myDrawerController = Get.put(MyDrawerController());
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(child: Obx(() {
            return Drawer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DrawerHeader(child: Image.asset(AppImage.appLogo)),
                    MyDwawerMenu(
                      ontap: () {
                        myDrawerController.selectedMenu(0);
                      },
                      text: "Dashboard",
                      icon: AppImage.categoryImage,
                      isSelected:
                          myDrawerController.selectedPageIndex.value == 0,
                    ),
                    MyDwawerMenu(
                      ontap: () {
                        myDrawerController.selectedMenu(1);
                      },
                      text: "Products",
                      icon: AppImage.bagImage,
                      isSelected:
                          myDrawerController.selectedPageIndex.value == 1,
                    ),
                    MyDwawerMenu(
                      ontap: () {
                        myDrawerController.selectedMenu(2);
                      },
                      text: "Category",
                      icon: AppImage.homeImage,
                      isSelected:
                          myDrawerController.selectedPageIndex.value == 2,
                    ),
                    MyDwawerMenu(
                      ontap: () {
                        myDrawerController.selectedMenu(3);
                      },
                      text: "Coupon",
                      icon: AppImage.couponImage,
                      isSelected:
                          myDrawerController.selectedPageIndex.value == 3,
                    ),
                    MyDwawerMenu(
                      ontap: () {
                        myDrawerController.selectedMenu(4);
                      },
                      text: "Settings",
                      icon: AppImage.settingsImage,
                      isSelected:
                          myDrawerController.selectedPageIndex.value == 4,
                    )
                  ],
                ),
              ),
            );
          })),
          const Expanded(
              flex: 6,
              child: Column(
                children: [
                  MyAppBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: DashBoardView(),
                  )
                ],
              )),
        ],
      )),
    );
  }
}
