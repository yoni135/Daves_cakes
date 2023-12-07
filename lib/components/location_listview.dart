import 'package:flutter/material.dart';
import 'package:daves_cakes/models/locations.dart';


class LocationListView extends StatelessWidget {

  final List<Location> loc;

  const LocationListView({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100, 
            
            color: Colors.white,
          child:SafeArea(
        // TODO: Replace child: Container()
        // 4
        
        child:
      ListView.separated(
          
          
          scrollDirection: Axis.horizontal,
          // 5
          itemCount: Location.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            
            return buildLocButton(Location.samples[index]);
          },
        separatorBuilder:(context,index)=>const SizedBox(width: 25,),)));
      
  }}
  
  Widget buildLocButton(Location loc){
    return SizedBox(
      height: 100,
      width: 112 
      , child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    elevation: 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ),
  child:Column(
    
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      CircleAvatar(backgroundColor: Colors.white,
      radius: 39,
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(loc.imageUrl),
       ),
       ),
      const SizedBox(width: 20,),
      Text(loc.label),
    ],
  ),
  onPressed: () {},
));
  }