import 'package:electric_shop/Admin/aadmin_login.dart';
import 'package:electric_shop/Admin/add_product.dart';
import 'package:electric_shop/pages/bottomnav.dart';
import 'package:electric_shop/pages/home.dart';
import 'package:electric_shop/pages/login.dart';
import 'package:electric_shop/pages/onboarding.dart';
import 'package:electric_shop/pages/productDetail.dart';
import 'package:electric_shop/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AddProduct(),
      // home: Onboarding(),
    );
  }
}
