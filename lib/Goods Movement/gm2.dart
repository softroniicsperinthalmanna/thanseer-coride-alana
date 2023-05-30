import 'package:flutter/material.dart';

import 'gm5.dart';
class gm2 extends StatefulWidget {
  const gm2({Key? key}) : super(key: key);

  @override
  State<gm2> createState() => _gm2State();
}

class _gm2State extends State<gm2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Pick up',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Drop',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Goods type',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Goods quatity',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Time  (9:00 am)',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Date   (1/10/2023)',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0,top: 50),
                child: Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor: Color(0xff068DA9)),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>gm5()));
                      }, child: Text('Search',style: TextStyle(fontSize: 20),)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
