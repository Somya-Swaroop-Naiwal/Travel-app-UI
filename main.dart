
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:travel_app/Travel2.dart';
import 'TravelHome.dart';




void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,

    
    initialRoute: 'TravelHome',
    routes: {   
      
      'TravelHome' : (context) => const TravelHome(),
      'Travel2' :(context) => Travel2(),
      //'Juice2' :(context) => const Juice2(),
     
    },
  ));
}