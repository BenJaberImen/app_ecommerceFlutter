import 'package:app_ecommerce/shared/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../provider/cart.dart';
import '../shared/appbar.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
     final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:appbarGreen ,
        title: Text("checkout screen"),
        
        
        actions: [
          ProductsAndPrice()
       
      ],),


body: Column(
  children: [
        SingleChildScrollView(
    
      child:   SizedBox(
    
      
    
        height: 500,
    
      
    
      
    
      
    
      child:ListView.builder(
    
      
    
        padding: const EdgeInsets.all(8),
    
      
    
        itemCount:classInstancee.selectedProducts.length,
    
      
    
        itemBuilder: (BuildContext context, int index) {
    
      
    
          return Card(
    
      
    
          child: ListTile(
    
       title: Text(classInstancee.selectedProducts[index].name),
    
              subtitle: Text("${classInstancee.selectedProducts[index].price} - ${classInstancee.selectedProducts[index].location }"),
    
      
    
              leading: CircleAvatar(backgroundImage:AssetImage(classInstancee.selectedProducts[index].imgPath),),
    
      
    
             
    
      
    
              trailing: IconButton(
    
      
    
              onPressed: () {   classInstancee.delete(classInstancee.selectedProducts[index]);},
    
      
    
              icon: Icon(Icons.remove)),
    
      
    
        ),);
    
      
    
        }
    
      
    
      ),
    
      
    
      
    
      
    
      
    
      
    
      ),
    
    ),
        ElevatedButton(
            onPressed: () {},
            child: Text(
              "Pay \$${classInstancee.price}",
              style: TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
          ),
  ],
),



    );
  }
}