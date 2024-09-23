// class AppRoutes {
//   static const splashScreen = '/';
//   static const home = 'home';
//   static const eventHome = 'order';
//   static const eventDetail = 'inventory';
// }


import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}