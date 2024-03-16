import 'package:flutter/material.dart';
import 'package:travelui18/home.dart';
import 'package:travelui18/model/travel.dart';

class TravelBlog extends StatefulWidget {
  const TravelBlog({super.key});

  @override
  State<TravelBlog> createState() => _TravelBlogState();
}

class _TravelBlogState extends State<TravelBlog> {
  final travel_list=Travel.generatedTravelList();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: PageView.builder(
            itemCount: travel_list.length,
            itemBuilder: (context,index){
            var travel =travel_list[index];
            return Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset(travel.img.toString(),
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                bottom: 30,left: 10,
                child: Column(
                  children: [
                  Text(travel.name.toString(),style: myStyle(30, Color.fromARGB(255, 255, 255, 255)),),
                  Text(travel.address.toString(),style: myStyle(30, Color.fromARGB(255, 255, 255, 255)),),
                ],),
              ),
              Positioned(
                right: 20,
                bottom: -20,
                child: Container(
                  
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 102, 102, 102),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ),
              )
              
            ],)  ;
            }),
    );
  }
}