import 'package:bakujo/commons/utils.dart';
import 'package:flutter/material.dart';

// TextStyle verificationStyle = TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: screenAwareSize(20, context);


//Text Fields Decoration
InputDecoration searchTextFieldDecoration(String placeholder, String hintText,
    IconData prefixIcon) {
  return InputDecoration(
    labelText: placeholder,
    labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.black54,fontWeight: FontWeight.w300),
    prefixIcon: (prefixIcon != null)
        ? Icon(
            prefixIcon,
            color: Colors.black87,
          )
        : null,
  );
}

//Cards Shadow
BoxShadow hamrohCardShadow() {
  return BoxShadow(
      color: Colors.black38, blurRadius: 10 , spreadRadius: 0.4);
}
