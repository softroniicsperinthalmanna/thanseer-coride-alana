import 'package:corider/Home/h1.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
class h2 extends StatefulWidget {
  const h2({Key? key}) : super(key: key);

  @override
  State<h2> createState() => _h2State();
}

class _h2State extends State<h2> {
  String?  selectedOption='12';
  String?  selectedOption2='PM';


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('GO Share  ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff068DA9),
                    fontFamily: 'Times New Roman'
                ),),

              ),

            ],
          ), //app name
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
              ),
              decoration: InputDecoration(
                hintText: 'Destination',
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color(0xff068DA9),
                prefixIcon: Icon(Icons.search_rounded,color: Colors.white,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)

                    ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)

                )
              ),
            ),
          ),

        ],
      ),


    );
  }
}
