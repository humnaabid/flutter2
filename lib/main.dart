import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
         Center(
           child: Scaffold
            ( 
              appBar: AppBar(title: Center(child: Text("LOG IN")),
                 ),
            
      
             body: SingleChildScrollView(
                            child: Center(
                            child: SizedBox(
                     child: Column(children: [
                       SizedBox(height:50),
                       Text("EMAIL"),
                        Container(
                          height: 100,
                          width: 200,
                          child: TextField() ,
                        ),
                        Text("PASSWORD"),
                        Container(
                          height: 100,
                          width: 200,
                          child: TextField() ,
                        ),
                         Container(
                          width: 100,
                          child: ElevatedButton(onPressed: (){},child: Text("LOG IN"),) ,
                        ),

                     ],),
                   ),
               ),
             ),
                        

      ),
         ),
       
    );
  }
}