import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column buildColumnWidget(String imageName, String heading, double subheading) {
  return Column(
    children: [
      Image.asset(imageName),
      Text(heading,style: TextStyle(color: Colors.white),),
      Text(subheading.toString(),style: TextStyle(color: Colors.white),),
    ],
  );
}
