import 'dart:convert';
import 'package:corider/Home/h4edit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../connect.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
class h4 extends StatefulWidget {
  const h4({Key? key}) : super(key: key);

  @override
  State<h4> createState() => _h4State();

}

class _h4State extends State<h4> {
  var log_id;
  var flag;
  var mobile_no;
  Future<String?> getLoginId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    log_id = prefs.getString('loginId');
    print('log_id:$log_id');
    return log_id;
  }

  Future<dynamic> getdata() async {
    var log_id=await getLoginId();
    print(log_id);
    var data={'log_id':log_id.toString()};
    // var data={'log_id':'1'};

    print("log_id1=$log_id");
    var response = await post(Uri.parse("${con.url}login/profile.php"),body: data);
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 && jsonDecode(response.body)['result']=='success') {
      flag=1;
      return jsonDecode(response.body);

    }
    else {
      flag=0;
      const CircularProgressIndicator();
      Text('no data');
    }

  }


  // Future<String?> getLoginId() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? log_id = prefs.getString('loginId');
  //   return log_id;
  // }

  //
  // Future<Map<String?,String?>> getData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //    log_id = prefs.getString('loginId');
  //    first_name = prefs.getString('first_name');
  //    last_name = prefs.getString('last_name');
  //    mobile_no = prefs.getString('mobile_no');
  //   return {
  //     'log_id': log_id,
  //     'first_name': first_name,
  //     'last_name': last_name,
  //     'mobile_no': mobile_no
  //   };
  // }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   setState(() {
  //     // profile();
  //   });
  //   print(log_id);
  //   print(first_name);
  //   print(last_name);
  //   print(mobile_no);
  //
  // }
  // Future<Map<String?,String?>> GetData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? log_Id = prefs.getString('log_id');
  //   String? first_name = prefs.getString('first_name');
  //   String? last_name = prefs.getString('last_name');
  //   String? mobile_no = prefs.getString('mobile_no');
  //   return {
  //     'log_id': log_Id,
  //     'first_name': first_name,
  //     'last_name': last_name,
  //     'mobile_no': mobile_no
  //   };
  // }
  // @override
  // initstate() async {
  //   super.initState();
  //   var userData=await GetData();
  //   first_name=userData['first_name'];
  //   last_name=userData['last_name'];
  //   mobile_no=userData['mobile_no'];
  // }


  // void profile() async{
  //   Map<String?,String?>data=await getData();
  //   first_name=data['first_name'];
  //   last_name=data['last_name'];
  //   log_id=data['log_id'];
  //   mobile_no=data['mobile_no'];
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
                  Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        actions: [
          Row(
            children: [
              Text('GO Share  ',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff068DA9),
                  fontFamily: 'Times New Roman'
              ),),

            ],
          ), //app name
        ],
      ),

      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              FutureBuilder(
                  future: getdata(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    return flag==0?
                    Center(child: CircularProgressIndicator()):
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width:  MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 1,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {

                          return  Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage('${con.url}login/image/${snapshot.data['dp']}'),
                                    radius: 90,
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('${snapshot.data['username']} '.toLowerCase(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:Color(0xff068DA9)),),
                                      IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> h4edit(
                                            first_name: snapshot.data['first_name'],
                                            last_name: snapshot.data['last_name'],
                                            username: snapshot.data['username'],
                                            email: snapshot.data['email'],
                                            dp: snapshot.data['dp'],
                                          register_id: snapshot.data['register_id'],)));
                                      }, icon: Icon(Icons.edit,size: 25,color:Color(0xff068DA9),)),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [

                                      // IconButton(onPressed: (){
                                      //   print(snapshot.data[index]['starting_point']);
                                      //   print(snapshot.data[index]['destination']);
                                      //   print(snapshot.data[index]['date']);
                                      //   print(snapshot.data[index]['vehicle_no']);
                                      //   print(snapshot.data[index]['vehicle_type']);
                                      //   print(snapshot.data[index]['mobile_no']);
                                      //   print(snapshot.data[index]['group_name']);

                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>gt5(
                                        //   starting_point: snapshot.data[index]['starting_point'],
                                        //   destination: snapshot.data[index]['destination'],
                                        //   date: snapshot.data[index]['date'],
                                        //   vehicle_no: snapshot.data[index]['vehicle_no'],
                                        //   gt_id: snapshot.data[index]['gt_id'],
                                        //   group_name: snapshot.data[index]['group_name'],
                                        //   vehicle_type: snapshot.data[index]['vehicle_type'],
                                        // )
                                        // )
                                        // );
                                      // }, icon: Icon(Icons.edit))      ,
                                      // IconButton(onPressed: (){
                                      //   gm_id=snapshot.data[index]['gt_it'];
                                      //   setState(() {
                                      //     // deletedata();
                                      //   });
                                      // }, icon: Icon(Icons.delete))      ,

                                    ],
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 250,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 30,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('First name:'.toLowerCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                                              Text(':'.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),

                                              Text('${snapshot.data['first_name']} '.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:Color(0xff068DA9),),),
                                              SizedBox(width: 10,),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('last_name:'.toLowerCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                                              Text(':'.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),

                                              Text('${snapshot.data['last_name']}'.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:Color(0xff068DA9),),),
                                              SizedBox(width: 10,),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Mobile_no'.toLowerCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                                              Text(':'.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                                              Text('${snapshot.data['mobile_no']}'.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:Color(0xff068DA9),),),

                                              SizedBox(width: 10,),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          SizedBox(height: 10,),
                                          SingleChildScrollView(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Email:'.toLowerCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                                                Text(':'.toLowerCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                                                Text('${snapshot.data['email']}'.toLowerCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color:Color(0xff068DA9),),),
                                                SizedBox(width: 10,),
                                              ],
                                            ),
                                          ),


                                        ],
                                      )
                                  )
                                ],
                              )


                          );
                        },
                      ),
                    );
                  }
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     IconButton(onPressed: (){
              //       Navigator.pop(context);
              //     }, icon: Icon(Icons.arrow_back_ios_new)),
              //
              //     Padding(
              //       padding: const EdgeInsets.only(left: 8.0),
              //       child: Text('GO Share',style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.w500,
              //           color: Color(0xff068DA9),
              //           fontFamily: 'Times New Roman'
              //       ),),
              //     ),
              //    IconButton(onPressed: (){
              //      Navigator.push(context, MaterialPageRoute(builder: (context)=>h4edit()));
              //    }, icon: Icon(Icons.edit,color: Color(0xff068DA9),))
              //    //app name
              //   ],
              // ),
              // Center(
              //   child: CircleAvatar(
              //     backgroundImage:  AssetImage('assets/home/h (1).jpeg'),
              //     radius: 80,
              //   ),
              // ),
              // SizedBox(height: 30,),
              // Center(
              //   child: Text(' '.toUpperCase(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff068DA9)),),
              // ),
              // SizedBox(height: 45,),
              //
              //
              // Stack(
              //   children:[
              //     Container(
              //       height: 270,
              //       width: MediaQuery.of(context).size.width,
              //       child: Opacity
              //         (
              //           opacity: 0.2,
              //           child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //       child: Text('$mobile_no',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
              //     ),
              //     Positioned(
              //       top: 40,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //         child: Text('9874563210',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
              //       ),
              //     ),
              //     Positioned(
              //       top: 80,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //         child: Text('Peter griffin..............',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
              //       ),
              //     ),
              //     Positioned(
              //       top: 120,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //         child: Text('peter@gmail.com',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
              //       ),
              //     ),
              // ]),

            ],
          ),
        ),
      ),


    );
  }
}
