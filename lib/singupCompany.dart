import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import 'custom_Text_Field.dart';
import 'loginScreen.dart';
import 'profile.dart';

class singupCompany extends StatefulWidget {
  @override
  _singupCompanyState createState() => _singupCompanyState();
}

class _singupCompanyState extends State<singupCompany> {
  GlobalKey<FormState> formKey = GlobalKey();

  String CompanyName;
  String AccountName;
  String InstagramAcount;
  String Mobile;
  String Email;
  String City;
  String Password;
  String ConfirmPassword;
  String Gender='Gender';
  String Country='Country';

  int Screens;


  List<String> gender = ['Male', 'Fmale'];
  List<String> country = ['Palstine', 'Egpt','Syria'];

  saveCompanyName( String value){
    this.CompanyName=value;
  }
  saveAccountName( String value){
    this.AccountName=value;
  }
  saveInstagramAcount( String value){
    this.InstagramAcount=value;
  }
  saveMobile( String value){
    this.Mobile=value;
  }
  saveEmail( String value){
    this.Email=value;
  }
  saveCity( String value){
    this.City=value;
  }
  savePassword( String value){
    this.Password=value;
  }
  saveConfirmPassword( String value){
    this.ConfirmPassword=value;
  }

  saveForm() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => profile()),
      );
    } else {
      return;
    }
  }

  ValidateCompanyName(value){
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }
  ValidateCity(value){
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }
  ValidateAccountName(value){
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }
  ValidateInstagramAcount(value){
    if (value == null || value == "") {
      return 'requerd filed';
    }
  }
  ValidateMobile(value){
    if (value == null || value == "") {
      return 'requerd filed';
    }else if(!isNumeric(value)){
      return 'wrong syntex';
    }

  }
  ValidateEmail(value){
    if (value == null || value == "") {
      return 'requerd filed';
    } else if (!isEmail(value)) {
      return 'wrong email syntex';
    }
  }

  ValidatePassword(value){
    if (value == null || value == "") {
      return 'requerd filed';
    } else if (value.length < 6) {
      return 'very week password';
    }
  }
  ValidateComformPassword(value){
    if (value == null || value == "") {
      return 'requerd filed';
    } else if(this.ConfirmPassword!=this.Password){
      return'passwords not matched';
    }
  }





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50,horizontal: 25),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Text(
                  'Sing up',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Enter your data',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 17, color: Colors.black,),
                  ),),
                SizedBox(height: 13),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 0,
                      groupValue: Screens,
                      onChanged: (value){
                        setState(() {
                          this.Screens=value;
                        });
                      },
                    ),

                    Text(
                      'User',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 1,
                      groupValue: Screens,
                      onChanged: (value){
                        setState(() {
                          this.Screens=value;
                        });
                      },
                    ),

                    new Text(
                      'Company',
                      style: new TextStyle(fontSize: 16.0),
                    ),

                  ],
                ),
                CustomTextField(saveFun: saveCompanyName,validationFun: ValidateCompanyName,Lable: 'Company name',textInputType: TextInputType.text,),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    //border: Border.all(color: Colors.black),
                    color: Color(0xFFF5F5F5),
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
                      this.Gender = value;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 10),
                CustomTextField(saveFun: saveAccountName,validationFun: ValidateAccountName,Lable: '@Account name',textInputType: TextInputType.text,),
                SizedBox(height: 10),
                CustomTextField(Lable: 'Instagram Account ',saveFun:saveInstagramAcount ,validationFun:ValidateInstagramAcount ,textInputType: TextInputType.text,),
                SizedBox(height: 10),
                CustomTextField(Lable: 'Mobile',saveFun:saveMobile ,validationFun: ValidateMobile,textInputType: TextInputType.phone,),
                SizedBox(height: 10),
                CustomTextField(Lable: 'Email',saveFun: saveEmail,validationFun:ValidateEmail ,textInputType: TextInputType.emailAddress,),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    //border: Border.all(color: Colors.black),
                    color: Color(0xFFF5F5F5),
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
                CustomTextField(Lable: 'City',saveFun: saveCity,validationFun: ValidateCity,textInputType: TextInputType.text,),
                SizedBox(height: 10),
                CustomTextField(Lable: 'Password',saveFun:savePassword ,validationFun:ValidatePassword ,textInputType: TextInputType.visiblePassword,),
                SizedBox(height: 10),
                CustomTextField(Lable: 'Confirm password',saveFun:saveConfirmPassword ,validationFun:ValidateComformPassword ,textInputType: TextInputType.visiblePassword,),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text('SING UP'),
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
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                      ),
                      TextSpan(
                          text: 'Log in',
                          style: TextStyle(fontSize: 13, color: Colors.black,decoration: TextDecoration.underline),
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
                          style: TextStyle(fontSize: 13, color: Colors.black,decoration: TextDecoration.underline),
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

    );
  }
}
