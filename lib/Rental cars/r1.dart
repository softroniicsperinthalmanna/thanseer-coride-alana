import 'package:corider/Rental%20cars/r2.dart';
import 'package:flutter/material.dart';
class r1 extends StatefulWidget {
  const r1({Key? key}) : super(key: key);

  @override
  State<r1> createState() => _r1State();
}

class _r1State extends State<r1> {
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
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
            ),
            decoration: InputDecoration(
                hintText: 'Search',
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
        Expanded(
          // height: ,
          // width: double.infinity,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index){
            return Card(
              elevation: 10,
              child: Container(
                  width: 350,
                  height: 350,
                  child: Column(
                    children: [
                      Image(image:  AssetImage('assets/home/h (3).jpeg'),fit: BoxFit.contain,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Lois',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text('9876543210',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('KL53E7515',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text('4 Seats',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Text('\$140 /day',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                      Text('Available',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.greenAccent),),

                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,top: 5),
                        child: Container(
                          height: 59,
                          width: 150,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>r2(
                                    img: 'assets/home/h (3).jpeg',
                                    name: 'Lois',
                                    number: '9874563210',
                                    seat: '4',
                                    vehicle: 'kl53e7515',
                                    price: '140',
                                    status: 'Available')));
                              }, child: Text('Book',style: TextStyle(fontSize: 20),)),
                        ),
                      ),

                    ],
                  )
              ),
            );
          }),
        ),







      ],
    )),
    );
  }
}
