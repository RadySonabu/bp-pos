import 'package:bp_pos/views/order/order_add.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Scaffold(

        body: Center(child: Text('Order Page')), 
        backgroundColor: const Color.fromARGB(255, 231, 193, 180),
        floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                    // Add your onPressed code here!
                    Get.to(OrderAdd());
                  },
                  label: Text('Add order'),
                  icon: Icon(Icons.add),
                ),
        )
      );
  }
}