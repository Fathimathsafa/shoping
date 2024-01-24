
import 'package:flutter/material.dart';

import 'login_user6.dart';
import 'loginprovider4.dart';
// void main (){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//   home: Second_page(),));
// }

class Second_page extends StatelessWidget {
  const Second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF795548) ,
      appBar: AppBar(
        backgroundColor:  Color(0xFF795548),
      ),


      body: Center(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,

            ),
            Positioned(
                bottom: 0,
                child: Image.asset("assets/app/WhatsApp Image 2024-01-19 at 20.50.09_bce84b2a-removebg-preview (1).jpg")) ,

            Positioned(
              top: 100, left: 30,right: 30,
              child: MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_PageProviderEX()));
              },
                color:  Color(0xFFDFCAA0),
                height: 50,
                minWidth: 300,
                shape: StadiumBorder(),
                child: Text("LOGIN AS PROVIDER",style: TextStyle(fontWeight: FontWeight.bold,color:  Color(0xFF795548),fontSize: 17),),
              ),
            ),
            Positioned(
              top: 200, left: 30,right: 30,
              child: MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_UserEX() ));
              },
                color:  Color(0xFFDFCAA0),
                height: 50,
                minWidth: 300,
                shape: StadiumBorder(),
                child: Text("LOGIN AS USER",style: TextStyle(fontWeight: FontWeight.bold,color:  Color(0xFF795548),fontSize: 17),),
              ),
            )
          ],








        ),





      ),
    );
  }
}
