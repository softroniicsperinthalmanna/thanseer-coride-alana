import 'package:flutter/material.dart';
class addride extends StatefulWidget {
  const addride({Key? key}) : super(key: key);

  @override
  State<addride> createState() => _addrideState();
}

class _addrideState extends State<addride> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              children:[
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
                  child: TextField(
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.travel_explore_sharp,color: Color(0xff068DA9),),
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
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
                  child: TextField(
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.access_time_filled_sharp,color: Color(0xff068DA9),),
                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: 'Time',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 15),
                  child: TextField(
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.date_range,color: Color(0xff068DA9),),
                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: 'Date',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff068DA9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),

                          )
                      ),
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>addride()));
                      },  child: Text('Save',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),)


    ))])
    )
    );
  }
}
