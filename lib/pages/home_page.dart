import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart_mobile/widgets/home_app_bar.dart';

import '../widgets/categories_widget.dart';
import '../widgets/items_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.blue[300],
      ),
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            color: Color(0xFFEDECF2),
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        height: 50.0,
                        width: 300.0,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Cari..."),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search_outlined,
                        size: 27,
                      )
                    ],
                  ),
                ),

                // Categories
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Kategori",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                // Categories
                CategoriesWidget(),

                //
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Produk Terbaik",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),

                // Items Widget
                ItemsWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
