import 'package:flutter/material.dart';

const decorationTextfield= InputDecoration(
      hintText: "Enter your Email",
      // To delete borders
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey,),),
      // fillColor: Colors.red,
      filled: true,
      contentPadding:  EdgeInsets.all(8),
    );