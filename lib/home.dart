// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelui18/widget/most_puar.dart';
import 'package:travelui18/widget/travel_blog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 40,
        actions: [
          Icon(Icons.menu),SizedBox(width: 10,)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Travel Blog",style: myStyle(22, Colors.black),),
          ),
           Expanded(
            flex: 6,
            child: TravelBlog()),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Most Popular",style: myStyle(22, Colors.black),),
           
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text("View all",style: myStyle(18, Colors.black),),
            ),
            
          ],),
          Expanded(flex: 3,
            child: MostPopular()),

        ],
      ),),

    );
  }
}
myStyle(double size,Color clr,{FontWeight? fw}){
  return TextStyle(fontSize: size,color: clr,fontWeight: fw);
}