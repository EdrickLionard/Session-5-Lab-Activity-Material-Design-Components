import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Tambahkan provider package
import 'package:minimumshop/models/shop.dart';
import 'package:minimumshop/pages/cart_page.dart';
import 'package:minimumshop/pages/onboard_page1.dart';
import 'package:minimumshop/themes/light_mode.dart';
import 'pages/intro_page.dart';
import 'pages/login_page.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        'intro_page': (context) => const IntroPage(),
        'login_page': (context) => const LoginPage(),
        'onboard_page1': (context) => const OnboardingPage1(),
        'shop_page': (context) => const ShopPage(),
        'cart_page': (context) => const CartPage(),
      },
    );
  }
}
