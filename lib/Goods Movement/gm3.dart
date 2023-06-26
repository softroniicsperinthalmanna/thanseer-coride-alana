import 'package:corider/Car%20pooling/c4.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'gm4.dart';
class gm3 extends StatefulWidget {
  const gm3({Key? key}) : super(key: key);

  @override
  State<gm3> createState() => _gm3State();
}

class _gm3State extends State<gm3> {
  var pick;
  var time_pick;
  var select=TimeOfDay.now();
  var starting_pointctrl=TextEditingController();
  var destinationctrl=TextEditingController();
  var vehicle_noctrl=TextEditingController();
  var datectrl=TextEditingController();
  var timectrl=TextEditingController();
  Future<void> select_date() async {
    final DateTime? pick= await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100));
    if (pick!=null && pick!=select_date) {
      print(pick);
      String formatteddate=DateFormat('yyyy-MM-dd').format(pick);
      print(formatteddate);
      datectrl.text=formatteddate ;

      setState(() {
        datectrl.text=formatteddate ;
      });
    }
  }
  Future<void> select_time() async {
    final TimeOfDay?time_pick=await
    showTimePicker(
        context: context, initialTime: select);
    if (time_pick!=null && time_pick!=select) {
      print(time_pick);
      String formattedtime=time_pick.format(context);
      print(formattedtime);
      setState(() {
        // timectrl=time_pick;
        select=time_pick;
        timectrl.text=formattedtime ;

      });
    }
  }

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
              // CircleAvatar(
              //   backgroundColor: Colors.grey,
              //   radius: 50,
              //   child: Center(child: IconButton(onPressed: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>gm4()));
              //   }, icon: Icon(Icons.add,size: 35,color: Colors.white70,))),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
              //   child: TextField(
              //     style: TextStyle(color: Colors.black),
              //     decoration: InputDecoration(
              //         filled: true,
              //         fillColor: Color(0xffDCDADA),
              //         hintText: 'Name',
              //         border: OutlineInputBorder(
              //             borderSide: BorderSide.none,
              //
              //             borderRadius: BorderRadius.circular(20)
              //         )
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
              //   child: TextField(
              //     style: TextStyle(color: Colors.black),
              //     decoration: InputDecoration(
              //         filled: true,
              //         fillColor: Color(0xffDCDADA),
              //         hintText: 'Mobile number',
              //         border: OutlineInputBorder(
              //             borderSide: BorderSide.none,
              //
              //             borderRadius: BorderRadius.circular(20)
              //         )
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextFormField(
                  validator: (val){
                    if ( val!.isEmpty){
                      return 'Field reqired';
                    }
                  },
                  controller: starting_pointctrl,
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
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextFormField(
                  validator: (val){
                    if ( val!.isEmpty){
                      return 'Field reqired';
                    }
                  },
                  controller: destinationctrl,
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
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextFormField(
                  validator: (val){
                    if ( val!.isEmpty){
                      return 'Field reqired';
                    }
                  },
                  controller: vehicle_noctrl,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Vehicle number',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextFormField(
                  validator: (val){
                    if ( val!.isEmpty){
                      return 'Field reqired';
                    }
                  },
                  controller: timectrl,
                  onTap: (){

                    select_time();


                  },
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
                child: TextFormField(
                  validator: (val){
                    if ( val!.isEmpty){
                      return 'Field reqired';
                    }
                  },
                  controller: datectrl,
                  onTap: (){
                    setState(() {
                      select_date();

                    });
                  },
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>gm4()));
                      }, child: Text('Add',style: TextStyle(fontSize: 20),)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
