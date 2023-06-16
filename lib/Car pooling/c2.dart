import 'package:corider/Car%20pooling/c5.dart';
import 'package:flutter/material.dart';
class c2 extends StatefulWidget {
  const c2({Key? key}) : super(key: key);

  @override
  State<c2> createState() => _c2State();
}

class _c2State extends State<c2> {
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



            ],
          ),
        ),
      ),
    );
  }
}
