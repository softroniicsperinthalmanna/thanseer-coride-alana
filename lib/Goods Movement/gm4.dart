import 'package:flutter/material.dart';
class gm4 extends StatefulWidget {
  const gm4({Key? key}) : super(key: key);

  @override
  State<gm4> createState() => _gm4State();
}

class _gm4State extends State<gm4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            SizedBox(height: 50,),

            Card(
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit))      ,
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete))      ,

                    ],
                  ),
                  Container(
                      width: 350,
                      height: 300,
                      child: Column(
                        children: [
                          Image(image:  AssetImage('assets/home/h (3).jpeg'),fit: BoxFit.contain,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Jon',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('9876543210',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                            ],
                          ),

                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Calicut',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('Cochin',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                            ],
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('KL53E7515',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('4 Seats',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('9:00 Am',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              Text('21/02/2023',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                            ],
                          ),

                        ],
                      )
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
