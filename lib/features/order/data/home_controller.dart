import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  var count = 0.obs;
  void increment() => count++;
  void onItemTapped(index) async {
    selectedIndex.value = index;
  }
}