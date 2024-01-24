import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '3rdpage.dart';



// void main() {
//   runApp(MaterialApp(
//     home: OnBoarding1(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class OnBoarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecor = const PageDecoration(

        bodyTextStyle: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        titlePadding: EdgeInsets.all(5),
        imagePadding: EdgeInsets.all(3),
        boxDecoration: BoxDecoration(
            color:  Color(0xFFDFCAA0)));

    return IntroductionScreen(
      globalBackgroundColor:  Color(0xFFDFCAA0),
      pages: [
        PageViewModel(
            decoration: pageDecor,
            titleWidget:

            Padding(
              padding:  EdgeInsets.only(top: 10),
              child: Container(

                width: 470,
                height: 470,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(image: AssetImage("assets/app/download (2).jpeg"),fit: BoxFit.fill)
                ),),
            ),
            body: "EXPLORE TRENDY FASHION"),


        PageViewModel(
            decoration: pageDecor,
            titleWidget:

            Padding(
              padding:  EdgeInsets.only(top: 10),
              child: Container(   width: double.infinity,
                height: 470,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(image: AssetImage("assets/app/download (1).jpeg"),fit: BoxFit.fill)
                ),),
            ),
            body:"FIND YOUR NEW FAVOURITE"

        ),

        PageViewModel(
            decoration: pageDecor,
            titleWidget:

            Padding(
              padding:  EdgeInsets.only(top: 10),
              child: Container(   width: double.infinity,
                height: 470,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(image: AssetImage("assets/app/Gold Rings.jpeg"),fit: BoxFit.fill),

                ),),
            ),

            body:"DISCOVER A NEW YOU!"

        ),

      ],

      next:  Text("Next",style: TextStyle(color: Colors.grey[700]),),
      showSkipButton: true,
      skip: Text("Skip",style: TextStyle(color: Colors.grey[700]),),

      done: Text("Continue",style: TextStyle(color: Colors.grey[700])),
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) =>Second_page())),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Second_page(),
      )),

      dotsDecorator: DotsDecorator(

          size: Size(10, 10),
          activeSize: Size(20, 20),
          color: Colors.black,
          activeColor: Colors.grey,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0))),
    );
  }
}
