import 'package:flutter/material.dart';
import 'package:second_offline/splash_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent.shade100),
        useMaterial3: true,
      ),
      home: splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  var result ;
  var operand1=TextEditingController();
  var operand2=TextEditingController();
  var operator=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Calculator",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),)),
        ),
        body:Center(
          child: Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: operand1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    //hintText: ("enter first number "),
                      labelText: ("First Operand"),
                      prefixIcon: Icon(Icons.numbers),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
                SizedBox(height: 4,),
                TextField(
                  controller: operand2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: ("Second Operand"),
                      prefixIcon: Icon(Icons.numbers),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
                SizedBox(height: 4,),
                TextField(
                  controller: operator,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: ("Enter Operation(+,-,*,%,/)"),
                      prefixIcon: Icon(Icons.ac_unit_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
                SizedBox(height: 4,),
                ElevatedButton(onPressed: (){
                  var u1=int.parse(operand1.text.toString());
                  var u2=int.parse(operand2.text.toString());
                  var u3=operator.text;
                  var sum ;
                  if(u3=="+"){
                    sum = u1+u2;
                  }
                  else if(u3=="-"){
                    sum=u1-u2;
                  }
                  else if(u3=="*"){
                    sum=u1*u2;
                  }
                  else if(u3=="%"){
                    sum=u1%u2;
                  }
                  else if(u3=="/") {
                    if (u2 != 0) {
                      sum = (u1 / u2);
                    }
                    else {
                      sum = "can't divide";
                    }
                  }
                  else{
                    sum="invalid operator";
                  }

                  result=sum;
                  setState(() {
                  });
                }, child: Text("calculate",style: TextStyle(fontSize: 16),)),
                Text("result : $result ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
        )
    );

  }
}

