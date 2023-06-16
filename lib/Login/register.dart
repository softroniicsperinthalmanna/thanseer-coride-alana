import 'dart:convert';

import 'package:corider/Login/otp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'connect.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register>{
  var visible_password=true;
  var visible_confirmpassword=true;
  bool _isValid = true;
  var first_namectrl=TextEditingController();
  var last_namectrl=TextEditingController();
  var mobile_noctrl=TextEditingController();
  var passwordctrl=TextEditingController();
  var confirm_passwordctrl=TextEditingController();

  bool validateMobileNumber(String mobileNumber) {
    RegExp mobileRegex = RegExp(r'^[0-9]{10}$');
    return mobileRegex.hasMatch(mobileNumber);
  }

  final registerkey=GlobalKey<FormState>();
  Future<void> sentdata() async {
    var data={
      'first_name':first_namectrl.text,
      'last_name':last_namectrl.text,
      'mobile_no':mobile_noctrl.text,
      'password':passwordctrl.text,
    };
    var response=await post(Uri.parse("${con.url}insert.php"),body: data);
    print(response.body);
    if (jsonDecode(response.body)['result']=='success') {
      setState(() {
        // Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>main1()),(Route <dynamic> route )=>false);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registerd')));
      }
      );
    }
    else
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registation faild')));

      }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: registerkey,
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
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'feild reqired';
                      }
                    },
                    controller: first_namectrl,
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
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'feild reqired';
                      }
                    },
                    controller: last_namectrl,
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
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.numberWithOptions(),
                  onChanged: (value) {
                    setState(() {
                      _isValid = validateMobileNumber(value);
                    });
                  },
                    // validator: (val){
                    //   if (val.toString().length==10 || val.toString().isEmpty){
                    //     print(val.toString().length);
                    //     return 'Reqired';
                    //   }
                    // },
                    controller: mobile_noctrl,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        errorText: _isValid ? null : 'Invalid mobile number',
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
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if (val!.length<=6 && val.isEmpty){
                        return 'password reqired or too short';
                      }
                    },
                    obscureText: visible_password,
                    controller: passwordctrl,
                    style: TextStyle(color: Colors.black),
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
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    controller: confirm_passwordctrl,
                    obscureText: visible_confirmpassword,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            visible_confirmpassword=!visible_confirmpassword;
                          });
                        },
                            icon:(visible_confirmpassword) ? Icon(Icons.visibility_off_outlined) :Icon(Icons.visibility)
                        ),
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
                              print(first_namectrl.text);
                              print(last_namectrl.text);
                              print(mobile_noctrl.text);
                              print(passwordctrl.text);
                              if (registerkey.currentState!.validate()) {
                                if (passwordctrl.text==confirm_passwordctrl.text) {
                                  sentdata();
                                }
                                else
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password missmatch')));
                                  }
                              }
                              }, child: Text('Next')),
                      ),
                    ),

                  ]),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
