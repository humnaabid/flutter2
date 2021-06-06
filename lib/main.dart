import 'package:flutter/material.dart';
import 'page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
         Scaffold
            ( body: Home()
            ),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
    appBar: AppBar(title:
         Center(
           child: Text("Ecom App UI" , 
        style:  TextStyle(color: Colors.black ,)
      ),
         ),
      backgroundColor:Colors.white,
      ),
    
     body:Center(
       child: Container(
         decoration: BoxDecoration(color: Color(0xFFEEEEEE)),
         height: MediaQuery.of(context).size.height*0.95,
         width: MediaQuery.of(context).size.width*0.95,
         

         child: SingleChildScrollView(
                    child: Column(

               children: [
                
                ListTile(
                  leading: Container(
                  padding: EdgeInsets.only( top:10 ),
                  height: 70,
                  width: 70,
                    child: (
                      Image.asset('image/icon.jpg',)),
              
                 ), 
                 title:
                    Text("User", style:
                    TextStyle( fontSize: 20, fontWeight: FontWeight.bold )  ),
                 subtitle: Text("abc@gmail.com", style:
                    TextStyle( fontSize: 13, fontWeight: FontWeight.bold )  ) ,

                  trailing:Column( 
                    mainAxisAlignment: MainAxisAlignment.end,
                     
                    children: [ 
                      SizedBox(height: 30,),
                      Text("LOG OUT", style:
                      TextStyle( fontSize: 10, fontWeight: FontWeight.bold  , color: Colors.cyan)  ),]),
                  ) ,
                  SizedBox(height: 20,),
                  Title( color: Colors.black,
                  child:  Text("ACCOUNT INFORMATION", style:
                    TextStyle( fontSize: 15, fontWeight: FontWeight.bold )  ),
                    ),
                    List1("Full Name", "User Name"),
                     List1("Email", "abc@gmail.com"),
                     List1("Phone No", "03330000"),
                     List1("Address", "street# 209 block# 12"),
                     List1("Gender", "Male"),
                     List1("Date of Birth", "02-12-2001"),
                
                    Container(
                      height: 35,
                      width: 100,
                  
                      child: ElevatedButton(onPressed: (){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>Page1()));
                   }, child: Text("Go next page") ,
                  ),
                    ),
                 
                 
               ],   

             ),
         
           
       ),
       ),
     ),
     ),
      
      
      
    );
  }
}

Widget List1(name , n2){
  return ListTile(
                  contentPadding: EdgeInsets.only(left: 10),
                  title: Text(name, style:
                  TextStyle( fontSize: 17, fontWeight: FontWeight.bold )  ),
               subtitle: Text(n2, style:
                  TextStyle( fontSize: 15, fontWeight: FontWeight.bold )  )  ,
                 trailing: Container(
                padding: EdgeInsets.only( top:10 ),
                height: 30,
                width: 30,
                  child: (
                    Image.asset('image/edit.jpg',)),
            
               ),  
                

  );

}
