import 'package:flutter/material.dart';
class h4edit extends StatefulWidget {
  const h4edit({Key? key}) : super(key: key);

  @override
  State<h4edit> createState() => _h4editState();
}

class _h4editState extends State<h4edit> {
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
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Edit Profile')),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/home/h (1).jpeg'),
              radius: 60,
            ),
    SizedBox(height: 35,),
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
    ),),
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
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffDCDADA),
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,

                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffDCDADA),
                    hintText: 'Mobile no.',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,

                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffDCDADA),
                    hintText: 'Bio',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,

                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 18.0,left:10,right: 10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffDCDADA),
                    hintText: 'Email ',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,

                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),),

          ],
        ),
      ),
    );
  }
}
