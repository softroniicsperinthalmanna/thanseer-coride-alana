import 'package:corider/Car%20pooling/c4.dart';
import 'package:corider/Group%20trip/gt4.dart';
import 'package:flutter/material.dart';

class gt3 extends StatefulWidget {
  const gt3({Key? key}) : super(key: key);

  @override
  State<gt3> createState() => _gt3State();
}

class _gt3State extends State<gt3> {
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
              SizedBox(height: 30,),

              Text('Create your trip',style:
              TextStyle(
                  fontSize: 25,
                  color: Color(0xff068DA9),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'),),
              SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffDCDADA),
                            hintText: 'Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffDCDADA),
                            hintText: 'Mobile No',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffDCDADA),
                            hintText: 'Starting point',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffDCDADA),
                            hintText: 'Destination',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffDCDADA),
                            hintText: ' Vehicle number',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                    child: SizedBox(
                      width: 170,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffDCDADA),
                            hintText: 'Available seats',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Group name',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>gt4()));
                      }, child: Text('Create',style: TextStyle(fontSize: 20),)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
