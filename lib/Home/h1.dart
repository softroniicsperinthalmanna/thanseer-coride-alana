import 'package:corider/Car%20pooling/c1.dart';
import 'package:corider/Goods%20Movement/gm1.dart';
import 'package:corider/Group%20trip/gt1.dart';
import 'package:flutter/material.dart';
class h1 extends StatefulWidget {
  const h1({Key? key}) : super(key: key);

  @override
  State<h1> createState() => _h1State();
}

class _h1State extends State<h1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('GO Share',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff068DA9),
                    fontFamily: 'Times New Roman'
                ),),

              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,color: Colors.black,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),

            ],
          ), //app name
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 30),
              child: Text('Select your ride',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 30,),
             Opacity(
               opacity: 0.7,
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                 child: Container(
                   height: 80,
                   width: double.infinity,
                   child: ElevatedButton(
                       style:ElevatedButton.styleFrom(
                         foregroundColor: Colors.grey,
                           backgroundColor: Colors.white),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>c1()));
                       }, child: Text(
                     'Car/Bike Pooling',style: TextStyle(color: Colors.black,fontSize: 22),)),
                 ),
               ),
             ),
            Opacity(
              opacity: 0.7,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                          foregroundColor: Colors.grey,
                          backgroundColor: Colors.white),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>gm1()));

                      }, child: Text(
                    'Goods Movement',style: TextStyle(color: Colors.black,fontSize: 22),)),
                ),
              ),
            ),
            Stack(
              children:[
                Container(
                    height: 300,
                    width: 350,
                    child: Opacity
                      (
                        opacity: 0.2,
                        child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,)


                    )),
                Opacity(
                  opacity: 0.7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      child: ElevatedButton(
                          style:ElevatedButton.styleFrom(
                              foregroundColor: Colors.grey,
                              backgroundColor: Colors.white),
                          onPressed: (){}, child: Text(
                        'Rental Service',style: TextStyle(color: Colors.black,fontSize: 22),)),
                    ),
                  ),
                ),

                Opacity(
                  opacity: 0.7,
                  child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80.0),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                            foregroundColor: Colors.grey,
                            backgroundColor: Colors.white),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>c1()));

                        }, child: Text(
                      'Group Trip',style: TextStyle(color: Colors.black,fontSize: 22),)),
                  ),
              ),
                ),

              ])],
        ),
      ),
    );
  }
}
