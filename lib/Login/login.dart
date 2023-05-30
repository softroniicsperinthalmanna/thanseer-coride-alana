import 'package:corider/Home/Home.dart';
import 'package:corider/Login/forgotpassword.dart';
import 'package:corider/Login/register.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Center(
                 child: Padding(
                   padding: const EdgeInsets.only(top: 100),
                   child: Text('GO Share',style: TextStyle(
                       fontSize: 35,
                       fontWeight: FontWeight.w500,
                       color: Color(0xff068DA9),
                        fontFamily: 'Times New Roman'
                   ),),
                 ),
               ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 30),
                child: TextField(
                  style: TextStyle(color: Colors.black,fontSize: 18),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person,color: Color(0xff068DA9),),
                    filled: true,
                    fillColor: Color(0xffDCDADA),
                    hintText: 'Mobile number',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,

                        borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 18),
                child: TextField(
                  style: TextStyle(color: Colors.white,fontSize: 18),
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined)),

                      filled: true,
                      fillColor: Color(0xffDCDADA),
                      hintText: 'Password',
                      suffix: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 225.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot()));
                }, child: Text('forgote password?',style:TextStyle(color: Colors.black),)),
              ),
              Container(
                height: 50,
                width: 220,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                    }, child: Text('Login',style: TextStyle(fontSize: 20),)),
              ),
              SizedBox(
                height:15,
              ),

              Text('or ',style: TextStyle(fontSize: 14),),
              SizedBox(
                height:15,
              ),
              Text('Login With ',style: TextStyle(fontSize: 14),),
             Stack(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.facebook,size: 50,color: Color(0xff3b5998),)),
                     IconButton(onPressed: (){}, icon: Icon(Icons.gps_fixed,size: 50,color: Colors.lightGreen,)),
                     IconButton(onPressed: (){}, icon: Icon(Icons.g_mobiledata,size: 50,color: Colors.brown,)),

                   ],
                 ),
               ),

               Container(
                height: 300,
              width: 350,
              child: Opacity
                (
                opacity: 0.2,
                  child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),
               Padding(
                 padding: const EdgeInsets.only(left: 100.0,top: 180),
                 child: Row(
                   children: [
                     Text('Dont have an Account? '),
                     TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                     }, child: Text('Signup'))
                   ],
                 ),
               )
        ],
      ),
              ])



          ),
        ),
      );
  }
}
