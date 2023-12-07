import 'package:flutter/material.dart';

class KobaImage extends StatelessWidget {
 const KobaImage({super.key});

@override
Widget build(BuildContext context) {
// 5
return Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [Image.asset("assets/images/UI_Images/koba.png", height: 80,),],
);
}}