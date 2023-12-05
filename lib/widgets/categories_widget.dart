import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  static const TextStyle nmStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static const List<Widget> nmProduk = [
    Text(
      "Pizza",
      style: nmStyle,
    ),
    Text(
      "Ayam Goreng",
      style: nmStyle,
    ),
    Text(
      "Beef Lasagna",
      style: nmStyle,
    ),
    Text(
      "Spagetti",
      style: nmStyle,
    ),
    Text(
      "Rice Chicken",
      style: nmStyle,
    ),
    Text(
      "Burger",
      style: nmStyle,
    ),
    Text(
      "Spagetti",
      style: nmStyle,
    ),
    Text(
      "Donat",
      style: nmStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 7; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/$i.jpg",
                    width: 40.0,
                    height: 40.0,
                  ),
                  SizedBox(
                    width: 10,
                    height: 1,
                  ),
                  nmProduk.elementAt((i))
                ],
              ),
            )
        ],
      ),
    );
  }
}
