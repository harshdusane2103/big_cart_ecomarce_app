import 'package:big_cart_ecomarce_app/Home/addAddress.dart';
import 'package:big_cart_ecomarce_app/Home/homescreen.dart';
import 'package:big_cart_ecomarce_app/Splash/splash.dart';
import 'package:big_cart_ecomarce_app/Splash/splash_second.dart';
import 'package:big_cart_ecomarce_app/cart/cart.dart';

import 'package:big_cart_ecomarce_app/pay/odersuccsse.dart';
import 'package:big_cart_ecomarce_app/pay/payment.dart';
import 'package:flutter/material.dart';

import 'Detils/detials.dart';
import 'Home/Categori.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: derialscreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splashscreen(),
        '/splash': (context) => splashsecondscreen(),
        '/home': (context) => homescreen(),
        '/cate': (context) => cateScreen(),

        '/det': (context) => detailsScreen(),
        '/cart': (context) => Cartscreen(),
        '/pay': (context) => paymentscreen(),
        '/Success': (context) => SuccessScreen(),
        '/add': (context) => AddressScrren(),

      },
    );
  }
}
