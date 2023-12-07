import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  static const TextStyle nmStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);

  static const List<Widget> nmProduk = [
    Text("Pizza", style: nmStyle),
    Text("Ayam Goreng", style: nmStyle),
    Text("Beef Lasagna", style: nmStyle),
    Text("Spaghetti", style: nmStyle)
  ];

  @override
  State<CartItemSamples> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 4; i++)
          Container(
            height: 120.0,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.black,
                  onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("assets/$i.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CartItemSamples.nmProduk.elementAt(i),
                        Text(
                          "Rp 20.000",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ]),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(
                                    2), // Mengatur padding untuk memperkecil ukuran button
                                minimumSize: Size(0,
                                    0), // Menetapkan minimumSize ke nilai 0 untuk meminimalkan ukuran button
                              ),
                              onPressed: () {
                                setState(() {
                                  i == 0 && count1 > 0
                                      ? count1--
                                      : i == 1 && count2 > 0
                                          ? count2--
                                          : i == 2 && count3 > 0
                                              ? count3--
                                              : i == 3 && count4 > 0
                                                  ? count4--
                                                  : null;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                i == 0
                                    ? count1.toString()
                                    : i == 1
                                        ? count2.toString()
                                        : i == 2
                                            ? count3.toString()
                                            : count4.toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(
                                    2), // Mengatur padding untuk memperkecil ukuran button
                                minimumSize: Size(0,
                                    0), // Menetapkan minimumSize ke nilai 0 untuk meminimalkan ukuran button
                              ),
                              onPressed: () {
                                setState(() {
                                  i == 0
                                      ? count1++
                                      : i == 1
                                          ? count2++
                                          : i == 2
                                              ? count3++
                                              : count4++;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                )
              ],
            ),
          )
      ],
    );
  }
}
