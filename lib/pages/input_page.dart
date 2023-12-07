import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Controllers for text fields
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  // Initial category value
  String selectedCategory = 'Pilih Kategori';

  // Categories list
  final List<String> categories = [
    'Pilih Kategori',
    'Makanan',
    'Minuman',
  ];

  // Image variable

  // Name
  String _nama = '';
  String _link_image = '';
  int _harga = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      appBar: AppBar(
        toolbarHeight: 82,
        backgroundColor: Colors.blue[300],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Text(
            'Input Produk',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Name TextField
            TextField(
              controller: productNameController,
              decoration: InputDecoration(labelText: 'Nama Produk'),
              onChanged: (String value) {
                setState(() {
                  _nama = value;
                });
              },
            ),
            SizedBox(height: 16),

            // Price TextField
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Harga'),
              onChanged: (value) {
                setState(() {
                  _harga = int.parse(value);
                });
              },
            ),
            SizedBox(height: 16),

            // Category Dropdown
            DropdownButtonFormField<String>(
              value: selectedCategory,
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
              items: categories.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              decoration: InputDecoration(labelText: 'Kategori'),
            ),
            SizedBox(height: 16),

            // Image link
            TextField(
              controller: imageController,
              decoration: InputDecoration(labelText: 'Link Gambar'),
              onChanged: (String value) {
                setState(() {
                  _link_image = value;
                });
              },
            ),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image Selection
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[300], // Warna background putih
                    onPrimary: Colors.white, // Warna teks hitam
                  ),
                  onPressed: () {},
                  child: Text('Pilih Gambar'),
                ),
                SizedBox(height: 16),
                // Submit Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[300], // Warna background putih
                    onPrimary: Colors.white, // Warna teks hitam
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Nama Produk :',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '$_nama',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Harga Produk (Rp) :',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '$_harga',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Kategori :',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '$selectedCategory',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                Divider(),
                                Image.network(
                                  _link_image,
                                  width: 200,
                                  height: 200,
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
