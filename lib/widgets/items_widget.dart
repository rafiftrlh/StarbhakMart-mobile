import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
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
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < 7; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(6),
                  child: Image.asset(
                    "assets/$i.jpg",
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: nmProduk.elementAt(
                        i)), // Jadikan elementAt menjadi mulai dari index ke 0
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp. 50.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ]),
          )
      ],
    );
  }
}
