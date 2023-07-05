import 'dart:convert';

import 'package:corider/Home/Home.dart';
import 'package:corider/Login/forgotpassword.dart';
import 'package:corider/Login/register.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../connect.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var visible_password=true;
  var _mobilenoController = TextEditingController();
  var _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Future<void> _login() async {
  //   var data={
  //       'mobile_no': _mobilenoController.text,
  //       'password': _passwordController.text,
  //       };
  //   var response=await post(Uri.parse("${con.url}login.php"),body: data);
  //
  //   if (_formKey.currentState != null && _formKey.currentState!.validate()) {
  //     // Perform login authentication with the entered email and password
  //     String mobile = _mobilenoController.text;
  //     String password = _passwordController.text;
  //
  //     // Example: Simulating a login success
  //     if (mobile == '9947######' && password == 'password') {
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
  //       // Navigate to the home page or perform any other actions
  //       print('Login successful');
  //     } else {
  //       // Show an error message for invalid login
  //       print('Invalid email or password');
  //     }
  //   }
  // }
  var log_id;
  var first_name;
  var last_name;
  var mobile_no;

  void savedata(String loginId,first_name,last_name,mobile_no) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('loginId', loginId);
    prefs.setString('first_name', first_name);
    prefs.setString('last_name', last_name);
    prefs.setString('mobile_no', mobile_no);

  }
Future<void> login() async {
  var data={
    'mobile_no':_mobilenoController.text,
    'password':_passwordController.text
  };
  var response = await post(Uri.parse("${con.url}login.php"),body:data );
  print(response.body);


  if (jsonDecode(response.body)['result']=='Login success') {
    profile(jsonDecode(response.body)['log_id']);

    Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login success')));
  }
  else
  {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed')));

  }
}
Future<void> profile(String log_id) async {
  var data={
    'log_id':log_id,
  };
  var response = await post(Uri.parse("${con.url}login/profile.php"),body:data );
  print(response.body);
  log_id=jsonDecode(response.body)['log_id'];
  first_name=jsonDecode(response.body)['first_name'];
  last_name=jsonDecode(response.body)['last_name'];
  mobile_no=jsonDecode(response.body)['mobile_no'];
  print(log_id);
  print(first_name);
  print(last_name);
  print(mobile_no);
  if (log_id!=null && first_name!=null && last_name!=null && mobile_no!=null)
  {
    savedata(log_id,first_name,last_name,mobile_no);
  }

  // if (jsonDecode(response.body)['result']=='Login success') {
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login success')));
  // }
  // else
  // {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed')));
  //
  // }
}
  //login validation

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your mobilenumber';
                      }
                      return null;
                    },
                    controller: _mobilenoController,
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
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    controller: _passwordController,
                    style: TextStyle(color: Colors.black,fontSize: 18),
                    obscureText: visible_password,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            visible_password=!visible_password;
                            print(visible_password);
                          });
                        }, icon:(visible_password)?Icon(Icons.visibility_off):Icon(Icons.visibility)),

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
                      onPressed: login, child: Text('Login',style: TextStyle(fontSize: 20),)),
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
                   padding: const EdgeInsets.all(40),
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
                  height: 250,
                width: 350,
                child: Opacity
                  (
                  opacity: 0.2,
                    child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),
                 Positioned(
                   left: 100,
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
                ]),
          )



          ),
        ),
      );
  }
}
