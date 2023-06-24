import 'package:corider/Car%20pooling/c1.dart';
import 'package:corider/Car%20pooling/c4.dart';
import 'package:corider/Car%20pooling/connect_location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'connect_location.dart';
class c3 extends StatefulWidget {
  const c3({Key? key}) : super(key: key);

  @override
  State<c3> createState() => _c3State();
}

class _c3State extends State<c3> {
  var pick;
  var time_pick;
  var select=TimeOfDay.now();
  var starting_pointctrl=TextEditingController();
  var destinationctrl=TextEditingController();
  var vehicle_noctrl=TextEditingController();
  var datectrl=TextEditingController();
  var timectrl=TextEditingController();

  Future<String?> getLoginId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? loginId = prefs.getString('loginId');
    return loginId;
  }

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
void initState(){
  super.initState();
  print(select);
}
  final offer_poolkey=GlobalKey<FormState>();

  Future<void> senddata()  async {
  var log_id=await getLoginId();
    var data={
      'starting_point':starting_pointctrl.text,
      'destination':destinationctrl.text,
      'vehicle_no':vehicle_noctrl.text,
      'date':datectrl.text,
      'time':timectrl.text,
      'uid':log_id
    };
    var response=await post(Uri.parse("${con.url}offer_pool/offer_pool.php"),body: data);
    print(response.body);
    if (response.statusCode==200) {

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Offer pool registerd')));
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>c1()),(Route <dynamic> route )=>false);
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: offer_poolkey,
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
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>c4()));
                //   }, icon: Icon(Icons.add,size: 35,color: Colors.white70,))),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'feild reqired';
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
                        return 'feild reqired';
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
                        return 'feild reqired';
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
                        return 'feild reqired';
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
                        return 'feild reqired';
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
                  padding: const EdgeInsets.only(left: 0.0,top: 30),
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
                          if (offer_poolkey.currentState!.validate())
                          {
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registerd')));
                            senddata();

                              }
                        }, child: Text('ADD',style: TextStyle(fontSize: 20),)),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
