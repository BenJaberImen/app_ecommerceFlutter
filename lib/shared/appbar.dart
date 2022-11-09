
import 'package:app_ecommerce/model/item.dart';
import 'package:app_ecommerce/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/checkout.dart';
import '../pages/details_screen.dart';
import '../provider/cart.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
      final classInstancee = Provider.of<Cart>(context);
    return    Row(
            children: [
       Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.itemCount}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),

                  ),
                  IconButton(
                      onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Checkout()),
  );}, icon: Icon(Icons.add_shopping_cart)),
                ],
  ),

              
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "\$ ${classInstancee.price}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          );
  }
}