import 'package:corider/Car%20pooling/c2.dart';
import 'package:corider/Car%20pooling/c3.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'location.dart';

class c1 extends StatelessWidget {
  const c1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          Row(
          children: [
          IconButton(onPressed: (){
      Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_new)),

      Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('GO Share',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xff068DA9),
              fontFamily: 'Times New Roman'
          ),),
      ),

      //app name
      ],
    ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: MapScreen(),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: Container(
                    height: 70,
                    width: double.infinity,
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>c2()));
                        }, child: Text(
                      'Find Pool',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 10,
                child: Container(

                    height: 70,
                    width: double.infinity,
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>c3()));
                        }, child: Text(
                      'Offer Pool',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
