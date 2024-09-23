import 'package:bp_pos/core/routes/app_routes.dart';
import 'package:bp_pos/views/home/home.dart';
import 'package:bp_pos/views/inventory/inventory.dart';
import 'package:bp_pos/views/order/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Balay Pater POS',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page: () => const HomePage()),
      //   GetPage(name: '/order', page: () => const OrderPage()),
      // ],

    );
  }
}

class MainPage extends StatelessWidget {
  final NavigationController navController = Get.put(NavigationController());

  final List<Widget> pages = [
    HomePage(),
    OrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[navController.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navController.currentIndex.value,
          onTap: (index) => navController.changeIndex(index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home, 
                color: navController.currentIndex.value == 0 ? Colors.blue : Colors.grey,
              ),
                label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart, 
                color: navController.currentIndex.value == 1 ? Colors.blue : Colors.grey,
              ),
                label: 'Order'
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.storage, 
                color: navController.currentIndex.value == 2 ? Colors.blue : Colors.grey,
              ),
                label: 'Inventory'
            ),
          ],
        ),
      ),
    );
  }
}





