import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Scaffold(
        
        body: Center(child: Text('Inventory Page')), 
        backgroundColor: const Color.fromARGB(255, 231, 193, 180),
        floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.add),
                ),
        )
      );
  }
}