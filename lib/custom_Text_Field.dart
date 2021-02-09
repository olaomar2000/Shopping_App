import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  String Lable;
  Function saveFun;
  Function validationFun;
  TextInputType textInputType;

  CustomTextField({this.Lable,this.saveFun,this.validationFun,this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => saveFun(value),
      validator: (value)=>validationFun(value),
    keyboardType: textInputType,

      decoration: InputDecoration(
        labelText: Lable,
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
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
