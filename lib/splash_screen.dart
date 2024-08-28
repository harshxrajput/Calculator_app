import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_offline/main.dart';

class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){

      Navigator.pushReplacement(context,MaterialPageRoute(
          builder: (context)=>MyHomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.deepPurpleAccent.shade100,
       child: Center(
         child: RichText(
           text: TextSpan(
             text: "Calcy ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
             children: const <TextSpan>[
               TextSpan(text: "BY HARSH",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
             ]
           ),
         ),
       ),
       //child: Center(child: Text("Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)),
     ),
   );
  }
}