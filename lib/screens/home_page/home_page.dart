import 'package:ecom_backend/controllers/drawer_controller.dart';
import 'package:ecom_backend/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/my-drawer.dart';
import '../../widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Resposive.isDesktop(context);
    MyDrawerController drawerController = Get.put(MyDrawerController());
    return Scaffold(
      drawer: isDesktop ? null : MyDwawer(),
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop) const MyDwawer(),
          Expanded(
              flex: 6,
              child: Column(
                children: [
                  const MyAppBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(() => Padding(
                        padding: const EdgeInsets.all(10),
                        child: drawerController
                            .pages[drawerController.selectedPageIndex.value],
                      ))
                ],
              )),
        ],
      )),
    );
  }
}
