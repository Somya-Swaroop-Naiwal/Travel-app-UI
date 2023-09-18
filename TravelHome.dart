import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Travel2.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:get/get.dart';

class TravelHome extends StatefulWidget {
  const TravelHome({super.key});

  @override
  State<TravelHome> createState() => _TravelHomeState();
}

class _TravelHomeState extends State<TravelHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Positioned.fill(
            child: Image.asset('assets/images/explore2.jpeg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
            )
            ),

          ListView(padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            SizedBox(height: 100,),
            Text('Travel',style: TextStyle(fontSize: 60,fontFamily: 'Acme',color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text('before you run out of time.',style: TextStyle(color: Colors.white.withOpacity(0.85),fontFamily: 'Acme',fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 360,),


            InkWell(
              onTap: () {
                Get.to(()=>Travel2());
              },
              child: Container(margin: EdgeInsets.symmetric(horizontal: 40),
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 1),
                borderRadius: BorderRadius.circular(8),
              ),

              child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.double_arrow,color: Colors.green,),
                Text('\tLet\'s Travel',style: TextStyle(color: Color.fromARGB(234, 7, 255, 143),fontFamily:'Acme',fontSize: 30),),

              ],
              ),
              ),

            ),

            SizedBox(height: 20,),
            Center(child: Text('not all who wonder\n\t\t\t\t\t\t\t\t\t\t\t\t are lost',style: TextStyle(color: Colors.orange.withOpacity(0.65),fontFamily:'Acme',fontSize: 24),)),
            SizedBox(height: 50,),
          ],
            
          )

        ],
      ),
    );
  }
}