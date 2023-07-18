import 'package:flutter/material.dart';
class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(

              ),
                height: double.infinity,
                width: double.infinity,
                child: Image(image: AssetImage('assets/login/a.png'),fit: BoxFit.contain,)),
          )),
    );
  }
}
