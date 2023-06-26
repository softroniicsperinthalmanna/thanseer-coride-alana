import 'package:corider/Home/h4edit.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class h4 extends StatefulWidget {
  const h4({Key? key}) : super(key: key);

  @override
  State<h4> createState() => _h4State();

}

class _h4State extends State<h4> {
  var log_id;
  var first_name;
  var last_name;
  var mobile_no;

  // Future<String?> getLoginId() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? log_id = prefs.getString('loginId');
  //   return log_id;
  // }


  Future<Map<String?,String?>> getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
     log_id = prefs.getString('loginId');
     first_name = prefs.getString('first_name');
     last_name = prefs.getString('last_name');
     mobile_no = prefs.getString('mobile_no');
    return {
      'log_id': log_id,
      'first_name': first_name,
      'last_name': last_name,
      'mobile_no': mobile_no
    };
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      profile();
    });
    print(log_id);
    print(first_name);
    print(last_name);
    print(mobile_no);

  }

  void profile() async{
    Map<String?,String?>data=await getData();
    first_name=data['first_name'];
    last_name=data['last_name'];
    log_id=data['log_id'];
    mobile_no=data['mobile_no'];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                 IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>h4edit()));
                 }, icon: Icon(Icons.edit,color: Color(0xff068DA9),))
                 //app name
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage:  AssetImage('assets/home/h (1).jpeg'),
                  radius: 80,
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Text('$first_name',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff068DA9)),),
              ),
              SizedBox(height: 45,),


              Stack(
                children:[
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    child: Opacity
                      (
                        opacity: 0.2,
                        child: Image(image: AssetImage('assets/login/l.jpg'),fit: BoxFit.cover,))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text('Peter griffin',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                  ),
                  Positioned(
                    top: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('9874563210',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('Peter griffin..............',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('peter@gmail.com',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color:Colors.black)),
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
