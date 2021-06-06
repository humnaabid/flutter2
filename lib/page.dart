
import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(title:
         Center(
           child: Text("Ecom App UI" , 
        style:  TextStyle(color: Colors.black ,)
      ),
         ),
      backgroundColor:Colors.white,
      ),
        body: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             List2('image/iphone1.jpg', "Iphone 12"),
             SizedBox(height: 5,),
             List2('image/iphone2.jpg', "Iphone 8"),
             SizedBox(height: 5,),
             List2('image/macbook.jpg', "Mac Book"),
             SizedBox(height: 5,),
             List2('image/macbook pro.jpg', "MacBook pro"),
             SizedBox(height: 5,),

           
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                    ElevatedButton(onPressed: (){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>pg2()));
               }, child:Text("Go next page")),
               ElevatedButton(onPressed: (){
                      Navigator.pop(context);
               }, child:Text("Go back page")),
                  ],
                ),
             
             
            ],
          ),
        ),

      ),
      
    );
  }
}

Widget List2 (name ,data ){
  return Container(
          decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20), 
                  ),
    child:  Row(
      children: [
        Container(
          padding: EdgeInsets.only(left:10 , right: 7),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20)
                      ),
                      child: Image.asset(name),
                    ),
     
                Column(
                  children: [
                    
                    Text(data , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
       

                   Text("5.0 (23 Review)"),
                 Text("20 Pieces Rs90", style: TextStyle(color: Colors.purple),),
                   Text("Quantity 1"),
               ],
                ),
         ],
    ),
  );

}
