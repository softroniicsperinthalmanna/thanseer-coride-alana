import 'package:corider/Home/h4edit.dart';
import 'package:flutter/material.dart';
class h4 extends StatefulWidget {
  const h4({Key? key}) : super(key: key);

  @override
  State<h4> createState() => _h4State();
}

class _h4State extends State<h4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
               Padding(
                 padding: const EdgeInsets.only(left: 195.0),
                 child: IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>h4edit()));
                 }, icon: Icon(Icons.edit,color: Color(0xff068DA9),)),
               )
               //app name
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage:  AssetImage('assets/home/h (1).jpeg'),
                radius: 100,
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Text('Peter Griffin',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff068DA9)),),
            ),
            SizedBox(height: 45,),


            Stack(
              children:[ Container(
                  height: 300,
                  width: 350,
                  child: Opacity
                    (
                      opacity: 0.2,
                      child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text('Peter griffin',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                ),
                Positioned(
                  top: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text('9874563210',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                  ),
                ),
                Positioned(
                  top: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text('Peter griffin..............',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                  ),
                ),
                Positioned(
                  top: 120,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text('peter@gmail.com',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                  ),
                ),
            ]),
          ],
        ),
      ), 


    );
  }
}
