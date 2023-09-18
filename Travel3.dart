import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Travel3 extends StatefulWidget {
  Map details;
  Travel3(this.details);

  @override
  State<Travel3> createState() => _Travel3State();
}

class _Travel3State extends State<Travel3> {
  var desc1 ='Mother nature is ultimate inspiration. When you\'re feeling sluggish, simply walking outside and gatting fresh air can do wonders for your mood and outlook';
  var desc2 = 'When world escape you, turn to some of the literary minds for these beautiful nature quotes .Now get outside and get inspired!';
  var desc3 = 'Often, natures beauty can take your breath (and words) away. In those moments of awe, we like to turn to some of our favorite nature quotes that sum up how we\'re feeling. That inspirational nature quotes will make you want to go on a hike,sit by the lake, or just step outside to your yard. Plus,short nature quoteswith simple and concise language make great captions for instagram.';
  bool isLiked = false;

  void toggleLike(){
    setState(() {
      isLiked =!isLiked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Container(
             width :double.infinity,
             height: 450,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(widget.details['image']),
              fit: BoxFit.cover,
              ),
             ),

             alignment: Alignment.topLeft,
             child: Padding(padding: EdgeInsets.only(top: 38.0,left: 18),
             child: Container(
              height: 40,width: 40,decoration: BoxDecoration(color: Colors.white.withOpacity(0.24),),
              child: Center(child: Icon(Icons.arrow_back_ios_new, color: Colors.black,size: 24,),),

             ),
             ),


          ),

          ListView(
            children: [
              SizedBox(height: 350,),
              // Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              // child: Row(
              //   children: [
              //     Icon(Icons.location_on_rounded,color: Color.fromARGB(255, 3, 8, 250).withOpacity(0.7),size: 32,),
              //     Text(widget.details['location'],style: TextStyle(color: Color.fromARGB(255, 170, 27, 27),fontFamily: 'Acme',fontSize: 25,fontWeight: FontWeight.w700),),
              //   ],
              // ),
              // ),
              // SizedBox(height: 10,),
              // Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              // child: Text(widget.details['titledesc'],style: TextStyle(color: Color.fromARGB(255, 254, 11, 11).withOpacity(0.8),fontFamily: 'Acme',fontSize: 23,fontWeight: FontWeight.w500),),
              // ),SizedBox(height: 20,),

              Container(padding: EdgeInsets.all(20),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),color: Colors.white
               ),
               child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text(desc1,style: TextStyle(color: Colors.black.withOpacity(0.7),fontFamily: 'Acme',fontSize: 18,fontWeight: FontWeight.w600),),
                  SizedBox(height: 10,),
                  Text(desc2,style: TextStyle(color: Colors.black.withOpacity(0.7),fontFamily: 'Acme',fontSize: 18,fontWeight: FontWeight.w600),),
                  SizedBox(height: 10,),
                  Text(desc3,style: TextStyle(color: Colors.black.withOpacity(0.7),fontFamily: 'Acme',fontSize: 18,fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),


                  Container(margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.6),width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: Center(child: Text('wanna explore',style: TextStyle(color: Color.fromARGB(154, 130, 220, 28),fontFamily: 'Acme',fontSize: 30,fontWeight: FontWeight.bold),),),

                  ),

                  SizedBox(height: 20,),
                  Text('nothingis too far',style: TextStyle(color: Colors.black.withOpacity(0.6),fontFamily: 'Acme',fontSize: 18,fontWeight: FontWeight.w400),),
                  SizedBox(height: 50,),
                ],
               ),

              ),
            ],
          ),
         
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: toggleLike,
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Icon(isLiked ? Icons.favorite: Icons.favorite_border_rounded,color: Colors.red,),
          Text(isLiked ? '1':'0',style: TextStyle(color: Colors.black.withOpacity(0.8),fontFamily: 'Acme',fontSize: 13,fontWeight: FontWeight.bold),),
        ],
      ),),




    );
  }
}





