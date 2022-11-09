// ignore_for_file: use_key_in_widget_constructors

import 'package:app_ecommerce/pages/checkout.dart';
import 'package:app_ecommerce/pages/details_screen.dart';
import 'package:app_ecommerce/provider/cart.dart';
import 'package:app_ecommerce/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:app_ecommerce/model/item.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../shared/appbar.dart';



class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Details(product: items[index],)),
  );},
                child: GridTile(
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ],
                  ),
                      footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing:
                         
                         IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {
                              classInstancee.add(items[index]);
                            },
                            icon: Icon(Icons.add),),
                   

                      leading: Text("\$12.99"),

                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/test.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("ali Hassan",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("ali@yahoo.com"),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/ali.jpg")),
                ),
                ListTile(
        
  title:Text("Home"),

                    leading: Icon(Icons.home),
                    onTap: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Home(),),
                  );}
                    ),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {


                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Checkout(),),
                  );   
                    }),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Ali Hassan © 2022",
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
    
    ProductsAndPrice()


        ],
        backgroundColor: appbarGreen,
      ),
    );
  }
}
