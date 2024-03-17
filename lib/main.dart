import 'package:ashraflow2/checkout/checkout.dart';
import 'package:ashraflow2/ditails/ditailspage.dart';
import 'package:ashraflow2/payment/payment.dart';
import 'package:ashraflow2/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'cart/cart.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scrollable Body with AppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Checkout(),
    );
  }
}


