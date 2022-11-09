import 'package:app_ecommerce/pages/register.dart';
import 'package:app_ecommerce/shared/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../shared/constants.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      backgroundColor: Color.fromARGB(255,247, 247, 247),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 64,) ,
     TextField(
    keyboardType: TextInputType.emailAddress,
    obscureText: false,
    decoration: decorationTextfield.copyWith(hintText: "Enter your Email :",) 

    ), 
    const SizedBox(height: 33,) ,
          TextField(
    keyboardType: TextInputType.text,
    obscureText: true,
    decoration: decorationTextfield.copyWith(hintText: "Enter your password :") 

    ), 
    const SizedBox(height: 33,) ,
ElevatedButton(
   onPressed: (){},
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(BTNgreen),
     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  ),
   child: Text("Sign in ", style: TextStyle(fontSize: 19),),
),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Do not have an account ?", style: TextStyle(fontSize: 18)),
            TextButton(
   onPressed: (){Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const Register())
            );},
   
   child: Text('sign up', style: TextStyle(color: Colors.black, fontSize: 20)),)
          ],

         )
          ]),
        ),
      ),
    ),);
    
  }
}