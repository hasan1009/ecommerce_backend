import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  void selectedMenu(int index) {
    selectedPageIndex.value = index;
    update();
  }
}
