import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:starbhak_mart_mobile/pages/cart_page.dart';
import 'package:starbhak_mart_mobile/pages/input_page.dart';
import 'package:starbhak_mart_mobile/pages/item_page.dart';
import 'package:starbhak_mart_mobile/pages/profile_page.dart';
import 'package:starbhak_mart_mobile/widgets/botton_nav_bar.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 245, 245, 245)),
      home: SplashPage(),
      routes: {
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "inputPage": (context) => InputPage(),
        "profilePage": (context) => ProfilePage()
      },
    );
  }
}

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: Text(
        "Starbhak Mart",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: Nav(),
      durationInSeconds: 5,
    );
  }
}
