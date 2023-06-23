import 'dart:convert';

import 'package:corider/Car%20pooling/c5.dart';
import 'package:corider/Car%20pooling/connect_location.dart';
import 'package:corider/Car%20pooling/offerpool.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
class c2 extends StatefulWidget {
  const c2({Key? key}) : super(key: key);

  @override
  State<c2> createState() => _c2State();
}

class _c2State extends State<c2> {
  var flag=0;
  Future<dynamic> getdata() async {
    var response = await post(Uri.parse("${con.url}offer_pool/view_pool.php"));
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 && jsonDecode(response.body)[0]['result']=='success') {
      flag=1;
      return jsonDecode(response.body);

    }
    else {
      flag=0;
      const CircularProgressIndicator();
    Text('no data');
  }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child:
          Column(
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
              Container(
                height: 500,
                child: FutureBuilder(
                    future: getdata(),
                     builder: (context,snapshot){
    if (snapshot.hasError) {
    print(snapshot.error);
    }
    // if (!snapshot.hasData ||snapshot.data.length==0) {
    // return const Center(
    // child: CircularProgressIndicator(),
    // );
    // }
    return flag==0?Center(child: CircularProgressIndicator()):
    ListView.builder(
    itemCount: snapshot.data.length,
    itemBuilder: (contex,index){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>offerpool(
            starting_point: snapshot.data[index]['starting_point'],
            destination: snapshot.data[index]['destination'],
            vehicle_no: snapshot.data[index]['vehicle_no'],
            time: snapshot.data[index]['time'],
            date: snapshot.data[index]['date'])));
      },
      child: ListTile(
      title: Text('${snapshot.data[index]['destination']}'),
      subtitle: Text('${snapshot.data[index]['starting_point']}'),
      trailing: Column(
      children: [
      Text('${snapshot.data[index]['time']}'),
      Text('${snapshot.data[index]['date']}'),
      ],
      ),
      ),
    );
    });
                    }),
              )



            ],
          ),
        ),
      ),
    );
  }
}
