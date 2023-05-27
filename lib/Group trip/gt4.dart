import 'package:flutter/material.dart';
class gt4 extends StatefulWidget {
  const gt4({Key? key}) : super(key: key);

  @override
  State<gt4> createState() => _gt4State();
}

class _gt4State extends State<gt4> {
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

                  Container(
                      width: 250,
                      height: 250,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.edit))      ,
                              IconButton(onPressed: (){}, icon: Icon(Icons.delete))      ,

                            ],
                          ),
                          SizedBox(height: 10,),

                          Text('Cochin',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.teal),),
                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Calicut',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text('Cochin',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Colors.black),),

                            ],
                          ),
                          SizedBox(height: 10,),

                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Jon snow',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text('9874563210',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:Colors.black),),

                            ],
                          ),




                          SizedBox(height: 10,),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('KL53E7515',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text('4 Seats',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black),),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('6:00 AM',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black),),
                              Text('6/2/2023',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.black),),

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
