import 'package:flutter/material.dart';

Widget TextFieldWdgt(hinttxt, [icn]) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      style: const TextStyle( 
         color: Color.fromARGB(255, 56, 52, 52),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: hinttxt,
fillColor: Color.fromARGB(95, 255, 255, 255),
        filled: true,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 56, 52, 52),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: icn,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
  );
}
