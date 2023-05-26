import 'package:flutter/material.dart';
class gt1 extends StatelessWidget {
  const gt1({Key? key}) : super(key: key);

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
            SizedBox(
              height: 150,
            ),
            Card(
              elevation: 10,
              child: Container(
                  height: 70,
                  width: double.infinity,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                      onPressed: (){}, child: Text(
                    'Find group trip',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))),
            ),
            SizedBox(height: 30,),
            Card(
              elevation: 10,
              child: Container(
                  height: 70,
                  width: double.infinity,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                      onPressed: (){}, child: Text(
                    'Create group trip',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))),
            ),

            Container(
                height: 300,
                width: 350,
                child: Opacity
                  (
                    opacity: 0.2,
                    child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),

          ],

        ),
      ),
    );
  }
}
