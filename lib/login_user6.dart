
import 'package:flutter/material.dart';
import 'package:shoping/sign_inuser7.dart';

import '3rdpage.dart';
// void main (){
//    runApp(MaterialApp(debugShowCheckedModeBanner: false,
//    home: Login_UserEX(),));
// }
class Login_UserEX extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF795548),
      appBar: AppBar(
        backgroundColor: Color(0xFF795548),
        leading:
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Second_page()));
        },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFF795548))),
          child: Icon(Icons.arrow_back, color: Color(0xFFDFCAA0),),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 580,
                width: 400,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(70),
                      topLeft: Radius.circular(70)),

                ),
              ),
            ),
            Positioned(
                top: 10, left: 50,
                child: Text("Login", style: TextStyle(color: Color(0xFFDFCAA0),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),)),

            Positioned(
                top: 200, left: 40,
                child: Text("Email or Phone Number", style: TextStyle(
                    color: Color(0xFF795548),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),)),

            Padding(
              padding: EdgeInsets.only(top: 240, left: 25, right: 25),
              child: TextFormField(
                decoration: InputDecoration(

                  filled: true,
                  fillColor: Color(0xFFDFCAA0),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Email or Phone Number",
                  hintStyle: TextStyle(color: Color(0xFF795548)),

                ),
              ),
            ),


            Positioned(
                top: 360, left: 50,
                child: Text("Password", style: TextStyle(
                    color: Color(0xFF795548),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),)),
            Padding(
              padding: EdgeInsets.only(top: 400, left: 25, right: 25),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFDFCAA0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xFF795548)),
                ),
              ),
            ),
            Positioned(
              bottom: 120, left: 100, right: 100,
              child:
              MaterialButton(onPressed: () {},
                  color: Color(0xFF6F4E37),

                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 70,
                  child: Text("Login", style: TextStyle(
                      color: Color(0xFFDFCAA0), fontWeight: FontWeight.bold),)),
            ),
            Positioned(
              bottom: 40, left: 30, right: 30,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => sign_PageUserEX()));
                  },
                  child:
                  RichText(

                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: "don't have an account?",
                                style: TextStyle(color: Color(0xFF795548),
                                    fontSize: 15)),
                            TextSpan(
                                text: "sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Color(
                                    0xFF795548), fontSize: 15)),
                          ]
                      )
                  )
              ),
            )
          ],
        ),


      ),
    );
  }

}
