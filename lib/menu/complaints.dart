import 'package:flutter/material.dart';
class complaints extends StatefulWidget {
  const complaints({Key? key}) : super(key: key);

  @override
  State<complaints> createState() => _complaintsState();
}

class _complaintsState extends State<complaints> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
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
              SizedBox(height: 80,),

              SizedBox(
                width: 340,
                child: TextField(
                  style: TextStyle(color: Colors.white,fontSize: 20),
                  maxLines: 10,
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    hintText: 'Register your complaints here......',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                        borderSide: BorderSide.none
                    )
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white70
                    ),
                    onPressed: (){}, child:Text(
                  'Register',style: TextStyle(color: Color(0xff068DA9),
    ),
                ) ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
