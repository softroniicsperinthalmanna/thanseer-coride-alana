import 'package:flutter/material.dart';
class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  var select=false;
  // var select1=false;
  // var select2=false;
  // var select3=false;
  // var select4=false;

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
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  maxLines: 10,
                  decoration: InputDecoration(
                      fillColor: Colors.black12,
                      filled: true,
                      hintText: 'Enter your review here......',
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     IconButton(onPressed: (){
              //       setState(() {
              //         select=!select;
              //       });
              //     }, icon:(select)? Icon(
              //       Icons.star,size: 35,color: Colors.amber,):Icon(
              //       Icons.star,size: 30,)),
              //     IconButton(onPressed: (){
              //       setState(() {
              //         select1=!select1;
              //       });
              //     }, icon:(select1)? Icon(
              //       Icons.star,size: 35,color: Colors.amber,):Icon(
              //       Icons.star,size: 30,)),
              //     IconButton(onPressed: (){
              //       setState(() {
              //         select2=!select2;
              //
              //       });
              //     }, icon:(select2)? Icon(
              //       Icons.star,size: 35,color: Colors.amber,):Icon(
              //       Icons.star,size: 30,)),
              //     IconButton(onPressed: (){
              //       setState(() {
              //         select3=!select3;
              //
              //       });
              //     }, icon:(select3)? Icon(
              //       Icons.star,size: 35,color: Colors.amber,):Icon(
              //       Icons.star,size: 30,)),
              //     IconButton(onPressed: (){
              //       setState(() {
              //         select4=!select4;
              //
              //       });
              //     }, icon:(select4)? Icon(
              //       Icons.star,size: 35,color: Colors.amber,):Icon(
              //       Icons.star,size: 30,)),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return  IconButton(onPressed: (){
                                setState(() {
                                  select=!select;
                                });
                              }, icon:(select)? Icon(
                                Icons.star,size: 35,color: Colors.amber,):Icon(
                                Icons.star,size: 30,));
                      }, itemCount: 5),
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
