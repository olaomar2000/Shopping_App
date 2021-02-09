import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_vaidation_assigment/loginScreen.dart';
import 'package:string_validator/string_validator.dart';

import 'custom_Text_Field.dart';
import 'profile.dart';

class Singupuser extends StatefulWidget {
  @override
  _SingupuserState createState() => _SingupuserState();
}

class _SingupuserState extends State<Singupuser> {
  GlobalKey<FormState> formKey = GlobalKey();

  var mapuser={};
  var mapcompany={};

  String CompanyName;
  String AccountName;
  String InstagramAcount;
  String Mobile;
  String Email;
  String City;
  String Password;
  String ConfirmPassword;
  String Gender = 'Male';
  String Country = 'Palstine';
  int Screens=0;
  saveForm() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      if(Screens==0){
        mapuser['userName']=CompanyName;
        mapuser['AccountName']=AccountName;
        mapuser['InstagramAcount']=InstagramAcount;
        mapuser['Mobile']=Mobile;
        mapuser['Email']=Email;
        mapuser['City']=City;
        mapuser['Password']=Password;
        mapuser['ConfirmPassword']=ConfirmPassword;
        mapuser['Country']=Country;
        print(mapuser);
      }else{
        mapcompany['comName']=CompanyName;
        mapcompany['AccountName']=AccountName;
        mapcompany['InstagramAcount']=InstagramAcount;
        mapcompany['Mobile']=Mobile;
        mapcompany['Email']=Email;
        mapcompany['City']=City;
        mapcompany['Password']=Password;
        mapcompany['ConfirmPassword']=ConfirmPassword;
        mapcompany['Country']=Country;
        print(mapcompany);
      }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => profile()),
          );
    } else {
      return;
    }
  }

  List<String> gender = ['Male', 'female'];
  List<String> country = ['Palstine', 'Egypt', 'Syria'];

  saveCompanyName(String value) {
    this.CompanyName = value;
  }

  saveAccountName(String value) {
    this.AccountName = value;
  }

  saveInstagramAcount(String value) {
    this.InstagramAcount = value;
  }

  saveMobile(String value) {
    this.Mobile = value;
  }

  saveEmail(String value) {
    this.Email = value;
  }

  saveCity(String value) {
    this.City = value;
  }

  savePassword(String value) {
    this.Password = value;
  }

  saveConfirmPassword(String value) {
    this.ConfirmPassword = value;
  }



  ValidateCompanyName(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }

  ValidateCity(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }

  ValidateAccountName(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }

  ValidateInstagramAcount(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }

  ValidateMobile(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    } else if (!isNumeric(value)) {
      return 'wrong syntex';
    }
  }

  ValidateEmail(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    } else if (!isEmail(value)) {
      return 'wrong email syntex';
    }
  }

  ValidatePassword(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    } else if (value.length < 6) {
      return 'very week password';
    }
  }

  ValidateComformPassword(value) {
    if (value == null || value == "") {
      return 'requerd filed';
    } else if (this.ConfirmPassword != this.Password) {
      return 'passwords not matched';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/login.png"), fit: BoxFit.fill)),
       child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'Sing up',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 60),
                  Container(
                    width: double.infinity,
                    child: Text(
                      '   Enter your data',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // if screens==0 add to  info map user if scrrens==1 add info to map company
                  Row(
                    children: <Widget>[
                      Radio(
                        activeColor: Color(0xff606060),
                        value: 0,
                        groupValue: Screens,
                        onChanged: (value) {
                          setState(() {
                            this.Screens = value;
                          });
                        },
                      ),
                      Text(
                        'User',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        activeColor: Color(0xff606060),
                        value: 1,
                        groupValue: Screens,
                        onChanged: (value) {
                          setState(() {
                            this.Screens = value;
                          });
                        },
                      ),
                      new Text(
                        'Company',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  CustomTextField(
                    saveFun: saveCompanyName,
                    validationFun: ValidateCompanyName,
                    Lable: 'Company name',
                  ),
                  SizedBox(height: 10),
                  // gender
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Color(0xffE2E2E2),
                        )
                    ),
                    child: DropdownButton<String>(
                      hint: Text(Gender),
                      underline: Container(),
                      isExpanded: true,
                      items: gender
                          .map((e) => DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          this.Gender = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    saveFun: saveAccountName,
                    validationFun: ValidateAccountName,
                    Lable: '@Account name',
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    Lable: 'Instagram Account ',
                    saveFun: saveInstagramAcount,
                    validationFun: ValidateInstagramAcount,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    Lable: 'Mobile',
                    saveFun: saveMobile,
                    validationFun: ValidateMobile,
                    textInputType: TextInputType.phone,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    Lable: 'Email',
                    saveFun: saveEmail,
                    validationFun: ValidateEmail,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  // country
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Color(0xffE2E2E2),
                        )
                    ),
                    child: DropdownButton<String>(

                     hint: Text(Country),
                      underline: Container(),
                      isExpanded: true,
                      items: country
                          .map((e) => DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (value) {
                        this.Country = value;
                        setState(() {});
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    Lable: 'City',
                    saveFun: saveCity,
                    validationFun: ValidateCity,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    Lable: 'Password',
                    saveFun: savePassword,
                    validationFun: ValidatePassword,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    Lable: 'Confirm password',
                    saveFun: saveConfirmPassword,
                    validationFun: ValidateComformPassword,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    height: 55,
                    child: RaisedButton(
                      color:Color(0xFF1C1A1A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text('SING UP',style: TextStyle(color:Colors.white,fontSize: 20),),
                      onPressed: () {
                        saveForm();
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Already have account ? ',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black38),
                        ),
                        TextSpan(
                            text: ' Log in',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
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
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'SKIP',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => profile()),
                                );
                              }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
