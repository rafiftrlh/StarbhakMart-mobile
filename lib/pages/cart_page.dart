import 'package:flutter/material.dart';

// import '../widgets/cart_app_bar.dart';
import '../widgets/cart_bottom_nav_bar.dart';
import '../widgets/cart_item_samples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue[300],
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          // CartAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            color: Color(0xffedecf2),
            child: Column(
              children: [
                CartItemSamples(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
