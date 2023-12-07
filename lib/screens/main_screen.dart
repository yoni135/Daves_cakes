import 'package:daves_cakes/components/koba_image.dart';
import 'package:daves_cakes/components/location_listview.dart';
import 'package:flutter/material.dart';
import 'package:daves_cakes/components/cake_listview.dart';


class MainScreen extends StatelessWidget {
MainScreen({super.key});
@override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children:  [
               KobaImage(),
               SizedBox(height: 15,),
               CakeListview(),
               SizedBox(height: 16),
               LocationListView(loc: []),
               SizedBox(height: 16),
               //Stocks(),
              // Container(child: Consumer<CakeManager>(builder: (context, cakeClass, child){
               // return Text('${cakeClass.selectedCake}');
              // }
              // ))
               

          ]);
        }}