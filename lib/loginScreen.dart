import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_vaidation_assigment/profile.dart';
import 'package:form_vaidation_assigment/singupCompany.dart';
import 'package:form_vaidation_assigment/singupUser.dart';

import 'custom_Text_Field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String Phonenumber;
  String Password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/login.png"), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Form(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 50),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Enter your data',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 13),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Mobile',
                          filled: true,
                          labelStyle: TextStyle(
                            color: Color(0xFF6C738A),
                          ),
                          fillColor: Color(0xFFF5F5F5),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6C738A),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6C738A),
                              width: 0.0,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          this.Phonenumber = value;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'password',
                          filled: true,
                          labelStyle: TextStyle(
                            color: Color(0xFF6C738A),
                          ),
                          fillColor: Color(0xFFF5F5F5),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6C738A),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            borderSide: BorderSide(
                              color: Color(0xFF6C738A),
                              width: 0.0,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          this.Password = value;
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        child: Text(
                          'Forgot password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          if (this.Phonenumber == '05999' &&
                              this.Password == '123456789') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()),
                            );
                          }
                        },
                        color: Color(0xFF1C1A1A),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Don\'t have account? ',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black38),
                          ),
                          TextSpan(
                              text: ' Sing up',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Singupuser()),
                                  );
                                }),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
