import 'package:flutter/material.dart';

// TextStyle verificationStyle = TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: screenAwareSize(20, context);

//Text Fields Decoration
InputDecoration searchTextFieldDecoration(
    String placeholder, String hintText, IconData prefixIcon) {
  return InputDecoration(
    labelText: placeholder,
    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.black54, fontWeight: FontWeight.w300),
    prefixIcon: (prefixIcon != null)
        ? Icon(
            prefixIcon,
            color: Colors.black87,
          )
        : null,
  );
}

TextStyle regularTextStyle(Color color, double size) {
  return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w500);
}

//Cards Shadow
BoxShadow hamrohCardShadow() {
  return BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: 0.4);
}

Row hamroh_rating_Widget(String ratingPoint) {
  return Row(
    children: <Widget>[
      Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      Text(ratingPoint)
    ],
  );
}
