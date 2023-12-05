import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Starbhak Mart",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text(
                "Toko Makanan dan Minuman",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.red, padding: EdgeInsets.all(7.0)),
            badgeContent: Text(
              "4",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(Icons.shopping_bag_outlined, size: 30),
            ),
          )
        ],
      ),
    );
  }
}
