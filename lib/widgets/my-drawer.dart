import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/app_image.dart';
import '../controllers/drawer_controller.dart';
import 'my_drawer-menu.dart';

class MyDwawer extends StatelessWidget {
  const MyDwawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MyDrawerController myDrawerController = Get.put(MyDrawerController());
    return Expanded(
      child: Obx(
        () {
          return Drawer(
            width: 200,
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
                    isSelected: myDrawerController.selectedPageIndex.value == 0,
                  ),
                  MyDwawerMenu(
                    ontap: () {
                      myDrawerController.selectedMenu(1);
                    },
                    text: "Products",
                    icon: AppImage.bagImage,
                    isSelected: myDrawerController.selectedPageIndex.value == 1,
                  ),
                  MyDwawerMenu(
                    ontap: () {
                      myDrawerController.selectedMenu(2);
                    },
                    text: "Category",
                    icon: AppImage.homeImage,
                    isSelected: myDrawerController.selectedPageIndex.value == 2,
                  ),
                  MyDwawerMenu(
                    ontap: () {
                      myDrawerController.selectedMenu(3);
                    },
                    text: "Coupon",
                    icon: AppImage.couponImage,
                    isSelected: myDrawerController.selectedPageIndex.value == 3,
                  ),
                  MyDwawerMenu(
                    ontap: () {
                      myDrawerController.selectedMenu(4);
                    },
                    text: "Settings",
                    icon: AppImage.settingsImage,
                    isSelected: myDrawerController.selectedPageIndex.value == 4,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
