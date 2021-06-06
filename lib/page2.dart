
import 'package:flutter/material.dart';


class pg2 extends StatefulWidget {
 @override
  _pg2State createState() => _pg2State();
}

class _pg2State extends State<pg2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar:AppBar(title:
         Center(
           child: Text("Ecom App UI" , 
        style:  TextStyle(color: Colors.black ,)
      ),
         ),
      backgroundColor:Colors.white,
      ) ,
      body: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                width:200,
             child:TextFormField()),
              SizedBox(height: 10,),
                Text("History"),
               SizedBox(height: 5,),
              listTile("image/iphone1.jpg", "Iphone 12"),
              SizedBox(height: 5,),
              listTile("image/iphone2.jpg", "Iphone 8"),
              SizedBox(height: 5,),
              listTile("image/macbook.jpg", "MacBook"),
              SizedBox(height: 5,),
              listTile("image/macbook pro.jpg", "MacBook pro"),
              SizedBox(height: 5,),
              listTile("image/iphone1.jpg", "Iphone 12"),
              SizedBox(height: 5,),
              listTile("image/iphone2.jpg", "Iphone 12"),
              SizedBox(height: 5,),

              

                ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                 }, child:Text("Go back page")),
                        ],

        ),
      ),
        ),
      
    );
  }
}
Widget listTile(image, title){
    return ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage:AssetImage(image),
        ),
        title: Text(title ,style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),
        subtitle: Text("5.0 (23Reviews)" ,style: TextStyle(fontSize:15, fontWeight: FontWeight.bold)),
        trailing: Text("S10", style: TextStyle(fontSize:15, fontWeight: FontWeight.bold) ),
    );




}