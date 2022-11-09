import 'package:app_ecommerce/pages/checkout.dart';
import 'package:app_ecommerce/pages/details_screen.dart';
import 'package:app_ecommerce/pages/home.dart';
import 'package:app_ecommerce/pages/login.dart';
import 'package:app_ecommerce/pages/register.dart';
import 'package:app_ecommerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
  return ChangeNotifierProvider(
    create: (context) {return Cart();},
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Home(),),
);
  }
}