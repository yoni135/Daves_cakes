import 'package:flutter/material.dart';
import 'package:daves_cakes/models/cake.dart';
import 'package:daves_cakes/models/cake_manager.dart';
import 'package:provider/provider.dart';


class CakeListview extends StatefulWidget {
  const CakeListview({super.key});
  @override
  State<CakeListview> createState() => _CakeListViewState();
}
  class _CakeListViewState extends State<CakeListview>{

 @override 
    void initState(){
      super.initState();
    }
    void fetchCakes(){
      setState(() {
        
      });
    }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height:300,
            child:
          Expanded(
            
            child:
          ListView.separated(
          
          itemCount: Cake.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            
            return buildCakeButton(Cake.samples[index], context);
          },
        separatorBuilder:(context,index)=>const SizedBox(height: 10,),),
          )),
         
          ]);
  }}
  Widget buildCakeButton(Cake cake, BuildContext context) {
   
  
    return SizedBox(
      height: 100,
      width: 200,
      child:ElevatedButton(
  style: ElevatedButton.styleFrom(
    elevation: 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ),
  child:Row(
    
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      CircleAvatar(backgroundColor: Colors.white,
      radius: 39,
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(cake.imageUrl),
       ),
       ),
      const SizedBox(width: 20,),
      Text(cake.label),
      Spacer(),
      Text(cake.stock.toString()),
    ],
  ),
  onPressed: () {
    
    Provider.of<CakeManager>(context, listen: false).identify(cake);
  

    },
  
));
 

  }
