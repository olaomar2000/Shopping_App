import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_vaidation_assigment/loginScreen.dart';


import 'profile.dart';
import 'singupUser.dart';
import 'slider.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentindex = 0;

  List<Map<String, String>> images = [
    {"image": "images/Furniture8.jpg"},
    {"image": "images/Furniture7.jpg"},
    {"image": "images/Furniture6.jpg"},
    {"image": "images/Furniture9.jpg"},
    {"image": "images/Furniture10.jpg"},
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/login.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
       body: Padding(
         padding: const EdgeInsets.only(top:100),
         child: Column(
           children: <Widget>[
             Text('Buy your favourites',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
             Text('personalization of your \n shopping brands',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
             Expanded(
               flex: 10,
               child: CarouselSlider (
                 options: CarouselOptions(
                     onPageChanged: (index, reason) {
                       setState(() {
                         currentindex = index;
                       });
                     }
                 ),
                 items:imageSliders,

               ),
             ),
             Expanded(
               flex: 1,
               child: Column(
                 children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: List.generate(
                         img.length, (index) => buildDot(index: index)),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 5,),
             Container(
               width: 300,
               height: 55,
               child: RaisedButton(
                   color: Color(0xFF1C1A1A),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25)),
                   child: Text(
                     'START SHOPPING',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   onPressed: () {
                     Navigator.of(context)
                         .push(MaterialPageRoute(builder: (context) {
                       return profile();
                     }));
                   }),
             ),
             SizedBox(height: 10,),
             RichText(
               text: TextSpan(
                 children: <TextSpan>[
                   TextSpan(
                       style: TextStyle(
                           fontSize: 13,
                           decoration: TextDecoration.underline,
                           color: Colors.black),
                       text: 'Sing Up',
                       recognizer: TapGestureRecognizer()
                         ..onTap = () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(

                                 builder: (context) => Singupuser()),
                           );
                         }),
                   TextSpan(
                     text: ' or ',
                     style: TextStyle(
                         fontSize: 13,
                         color: Colors.black54),
                   ),
                   TextSpan(
                       text: ' Log in',
                       style: TextStyle(
                           fontSize: 13,
                           decoration: TextDecoration.underline,
                           color: Colors.black),
                       recognizer: TapGestureRecognizer()
                         ..onTap = () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => LoginScreen()),
                           );
                         }),
                 ],
               ),
             ),
             SizedBox(height: 30,)
//           Align(alignment: Alignment.bottomRight,
//               child: Image.asset('images/Path.png',fit: BoxFit.fitHeight,height: 100,width: 100,)),
           ],
         ),
       ),
      ),
    ));
  }
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 4),
      height: 6,
      width: currentindex == index ? 19 : 6,
      decoration: BoxDecoration(
          color: currentindex == index ? Color(0xFF000000) : Color(0xFFB2B2B2),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
