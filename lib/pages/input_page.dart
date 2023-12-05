import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Controllers for text fields
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  // Initial category value
  String selectedCategory = 'Pilih Kategori';

  // Categories list
  final List<String> categories = [
    'Pilih Kategori',
    'Makanan',
    'Minuman',
  ];

  // Image variable
  String selectedImage = '';

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
            ),
            SizedBox(height: 16),

            // Price TextField
            TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Harga'),
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
              onPressed: () {},
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
