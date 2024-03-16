import 'package:flutter/material.dart';
import 'package:travelui18/model/travel.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
 final travel_list1=Travel.mostPopular();
 
 
  @override
  Widget build(BuildContext context) {
        
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
              var travel =travel_list1[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(travel.img.toString()))

            ],
          );
          
          },
         separatorBuilder:(_,index)=>SizedBox(width: 6,) ,
          itemCount: travel_list1.length),

    );
  }
}