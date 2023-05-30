import 'package:corider/menu/addride.dart';
import 'package:flutter/material.dart';
class myrides extends StatelessWidget {
  const myrides({Key? key}) : super(key: key);

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
                Container(
                  height: 600,
                  child: ListView.separated(itemBuilder: (context,index){
                    return ListTile(
                      leading: Column(
                        children: [
                          Icon(Icons.mode_of_travel_outlined),
                          SizedBox(height: 5,),
                          Text('1${index}:00 ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                        ],
                      ),
                      title:Text('Calicut',style: TextStyle(fontSize: 20,fontFamily: 'Times New Roman',fontWeight: FontWeight.bold),),
                      subtitle: Text('1${index}/01/2023'),
                     trailing:IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline))
                    );
                  }, separatorBuilder: (context,index){
                    return Divider(
                      thickness: 3,
                    );
                  }, itemCount: 5),
                ),
                 Container(
                   height: 65,
                     width: 300,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xff068DA9),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30),

                         )
                       ),
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>addride()));
                      },  child: Icon(Icons.add,size: 40,color: Colors.white),))
  ]
          ),
        ),
    );
  }
}
