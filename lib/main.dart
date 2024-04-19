import 'package:ashraflow2/checkout/checkout.dart';
import 'package:ashraflow2/ditails/ditailspage.dart';
import 'package:ashraflow2/missfit/take_a_challenge.dart';
import 'package:ashraflow2/payment/payment.dart';
import 'package:ashraflow2/profile/profile.dart';
import 'package:ashraflow2/recomented_product/recomented_product.dart';
import 'package:ashraflow2/screens/home/home.dart';
import 'package:ashraflow2/select%20address/selectaddressdropdown.dart';
import 'package:ashraflow2/select_delivery/select_delivery.dart';
import 'package:flutter/material.dart';

import 'adress/adress.dart';
import 'cart/cart.dart';
import 'delivery2/delivery2.dart';
import 'login_page/login.dart';
import 'missfit/calorietorcher.dart';
import 'missfit/challenge.dart';
import 'missfit/challenge2_screen.dart';
import 'missfit/challenge_screen.dart';
import 'missfit/challengecomplete.dart';
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
      home: SelectAddressBottomSheet(),
    );
  }
}

class _Delivery2State {
}




