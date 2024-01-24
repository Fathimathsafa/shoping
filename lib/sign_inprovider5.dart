
import 'package:flutter/material.dart';

import 'loginprovider4.dart';
// void main (){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: sign_PageProviderEX(),));
// }
class sign_PageProviderEX extends StatelessWidget {
  sign_PageProviderEX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF795548),
      appBar: AppBar(
        backgroundColor: Color(0xFF795548),
        leading:
        ElevatedButton(onPressed: (

            ) {

          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Login_PageProviderEX()));
        },
          style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Color(0xFF795548) )),
          child:Icon(Icons.arrow_back,color: Color(0xFFDFCAA0),),
        ),

      ),
      body:Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 580,
                width: 400,

                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(70),topLeft: Radius.circular(70)),

                ),
              ),
            ),
            Positioned(
                top: 10,left: 50,
                child: Text("Sign in",style: TextStyle(color: Color(0xFFDFCAA0),fontWeight: FontWeight.bold,fontSize: 40),)),

            Positioned(
                top: 140,left: 40,
                child: Text("Name",style: TextStyle(color:Color(0xFF795548),fontWeight: FontWeight.bold ,fontSize: 18),)),
            Padding(
              padding:  EdgeInsets.only(top: 170,left: 25,right: 25),
              child: TextFormField(
                decoration: InputDecoration(

                  filled: true,
                  fillColor:  Color(0xFFDFCAA0) ,
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Your Name",
                  hintStyle:TextStyle(color:Color(0xFF795548)) ,

                ),
              ),
            ),


            Positioned(
                top: 250,left: 40,
                child: Text("Email or Phone Number",style: TextStyle(color:Color(0xFF795548),fontWeight: FontWeight.bold ,fontSize: 18),)),

            Padding(
              padding:  EdgeInsets.only(top: 280,left: 25,right: 25),
              child: TextFormField(
                decoration: InputDecoration(

                  filled: true,
                  fillColor:  Color(0xFFDFCAA0) ,
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Email or Phone Number",
                  hintStyle:TextStyle(color:Color(0xFF795548)) ,

                ),
              ),
            ),


            Positioned(
                top: 360,left: 50,
                child: Text("Password",style: TextStyle(color: Color(0xFF795548),fontWeight: FontWeight.bold,fontSize: 18),)),
            Padding(
              padding:  EdgeInsets.only(top: 390,left: 25,right: 25),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor:Color(0xFFDFCAA0)  ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: " Password",
                  hintStyle:TextStyle(color:Color(0xFF795548) ) ,
                ),
              ),
            ),
            Positioned(
                top: 470,left: 50,
                child: Text(" Confirm Password",style: TextStyle(color: Color(0xFF795548),fontWeight: FontWeight.bold,fontSize: 18),)),
            Padding(
              padding:  EdgeInsets.only(top: 500,left: 25,right: 25),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor:Color(0xFFDFCAA0)  ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Confirm Password",
                  hintStyle:TextStyle(color:Color(0xFF795548) ) ,
                ),
              ),
            ),
            Positioned(
              bottom: 60,left: 100,right: 100,
              child:
              MaterialButton(onPressed: (){},
                  color:Color(0xFF6F4E37),

                  shape: StadiumBorder(),
                  height: 50,
                  minWidth: 70,
                  child: Text("Create Account",style: TextStyle(color:Color(0xFFDFCAA0),fontWeight: FontWeight.bold ),)),
            ),
            Positioned(
              bottom: 10,left: 30,right: 30,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_PageProviderEX()));
                  },
                  child:
                  RichText(

                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: "al ready have an account?",style: TextStyle(color: Color(0xFF795548),fontSize: 15)),
                            TextSpan(
                                text: "Login",
                                style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF795548),fontSize: 15)),
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


