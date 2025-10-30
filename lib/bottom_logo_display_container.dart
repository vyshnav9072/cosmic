 import 'package:flutter/material.dart';

Container bottomLogoDisplayContainer(String imageName){
  return Container(
    height: 50,
    width: 70,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Image.asset(imageName),
  );
 }
