import 'package:corider/Login/otp.dart';
import 'package:flutter/material.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    String? gender="Male";
    return  Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('GO Share',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff068DA9),
                    fontFamily: 'Times New Roman'
                ),),
              ),//app name
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'First name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Last name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Mobile no',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined)),

                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined)),
                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,

                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 18.0,left:30,right: 10),
              //   child: Row(
              //     children: [
              //       Text('Male',style: TextStyle(fontSize: 18),),
              //       Radio(
              //           value: "Male",
              //           groupValue: gender,
              //           onChanged: (val){
              //             setState(() {
              //               gender=val;
              //             });
              //       }),
              //       Text('Female',style: TextStyle(fontSize: 18),),
              //       Radio(
              //           value: "Female",
              //           groupValue: gender,
              //           onChanged: (val){
              //             setState(() {
              //               gender=val.toString();
              //             });
              //           }),
              //       Text('Other',style: TextStyle(fontSize: 18),),
              //       Radio(
              //           value: "Other",
              //           groupValue: gender,
              //           onChanged: (val){
              //             setState(() {
              //               gender=val.toString();
              //             });
              //           })
              //     ],
              //   ),
              // ),Gender
              Stack(
                children:[
                  Container(
                    height: 300,
                    width: 350,
                    child: Opacity
                      (
                        opacity: 0.4,
                        child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),
                  Padding(
                    padding: const EdgeInsets.only(left: 130.0,top: 50),
                    child: Container(
                      height: 45,
                      width: 120,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
                          }, child: Text('Next')),
                    ),
                  ),

                ]),



            ],
          ),
        ),
      ),
    );
  }
}
