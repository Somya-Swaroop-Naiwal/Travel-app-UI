import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Travel3.dart';


class Travel2 extends StatefulWidget {
  const Travel2({super.key});

  @override
  State<Travel2> createState() => _Travel2State();
}

class _Travel2State extends State<Travel2> {
  List recommendation =['assets/images/ocean.jpeg','assets/images/snow.jpeg','assets/images/beach.jpg','assets/images/desert.jpeg','assets/images/forest.jpg','assets/images/Mountain.jpg'];
  List places =['ocean','snow','beach','desert','forest','mountain'];
  List topics = ['Top','Popular','Trainding','Favourite','Most Visited'];
  List topicsimages = ['assets/images/Mountain.jpg','assets/images/forest.jpg','assets/images/ocean.jpeg','assets/images/snow.jpeg','assets/images/beach.jpg','assets/images/desert.jpeg'];
  List topicdesc =['Come and feels the silence of mountains','Drizzling sunshine with half dry leaves','Silence sound near sea shoreswith silence  breeze','White snow just like cotton fur melting','We are standing near shore waiting for you','As far as you look only find sand and shine'];
  List location =['Kashmir','Ramnagar','Vapi','Nainital','Pune','Rajasthan'];

  String topicchosen ='Top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,toolbarHeight: 80,
        leading: Icon(Icons.sort,color: Colors.black.withOpacity(0.7),size: 35,),
        actions: [
          Icon(Icons.search,color: Colors.black.withOpacity(0.5),size: 35,),
          SizedBox(width: 20,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/explore2.jpeg'),
          ),

          SizedBox(width: 20,),
        ],
      ),

      body: ListView(padding: EdgeInsets.only(left: 20), 
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(height: 10,),
        Text('Your daily',style: TextStyle(color: Colors.black.withOpacity(0.7),fontFamily:'Acme',fontSize: 25,fontWeight: FontWeight.w600),),
        Text('Recommendation',style: TextStyle(color: Colors.black,fontFamily:'Acme',fontSize: 40,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),

        Container(
          height: 270,
          child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: recommendation.length,
          itemBuilder:(context, index) {
            return Card(margin: EdgeInsets.only(left: index==0?0:20,bottom: 15,top: 5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            elevation: 5,
             
             child: Container(
              width: 190,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image: AssetImage(recommendation[index]),
                 fit: BoxFit.cover,
                 )
               ),

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [Colors.transparent,Colors.transparent,Colors.transparent,Colors.black.withOpacity(0.6),],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                  ),

                  alignment: Alignment.bottomCenter,
                  child: Text(places[index],style: TextStyle(color: Colors.white,fontFamily: 'Acme',fontSize: 30,fontWeight: FontWeight.w400),),

                ),
             ),

            );
          }),

        ),
         SizedBox(height: 20,),

          Container(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: topics.length,
              itemBuilder: (context, index) {
                return Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector( 
                  onTap: () {
                    setState(() {
                      topicchosen =topics[index];
                    });
                  },

                child: Text(topics[index],style: TextStyle(color: topicchosen==topics[index]?Colors.black:Colors.black.withOpacity(0.5),fontSize:20,fontWeight: topicchosen==topics[index]?FontWeight.w800:FontWeight.w500,fontFamily: 'Acme'),),
                ),
                );
              },),
          ),

          GridView.builder  // I change this from listview to gridview.
          ( gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            shrinkWrap: true,
            itemCount: recommendation.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(()=>Travel3({
                    'image':topicsimages[index],
                    'title':places[index],
                    'location':location[index],
                    'titledesc':topicdesc[index],
                  }));
                },

                child: Card( 
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  elevation: 5, shadowColor: Colors.black.withOpacity(0.4),
                  child: Column(  // than I change this into column from row.
                    children: [
                      Expanded(flex: 70,
                      child: Container(margin: EdgeInsets.all(10),
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                         image:DecorationImage(image: AssetImage(topicsimages[index]),
                         fit: BoxFit.cover
                         ),
                         
                      ),
                      )),

                      Expanded(flex:90, child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_rounded,color: Colors.grey.withOpacity(0.6),size: 30),
                              Text(location[index],style: TextStyle(color: Colors.black.withOpacity(0.8),fontFamily: 'Acme'),),
                            ],
                          ),

                          Divider(),
                            Text(topicdesc[index],style: TextStyle(color: Colors.black.withOpacity(0.8),fontFamily:'Acme',fontSize: 18,fontWeight: FontWeight.w700),),
                          
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
      ],
      ),
    );
  }
}