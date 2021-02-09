import 'package:flutter/material.dart';

final List<String> img = [
  "images/Furniture8.jpg",
  "images/Furniture7.jpg",
  "images/Furniture6.jpg",
  "images/Furniture9.jpg",
  "images/Furniture10.jpg"
];

final List<Widget> imageSliders = img
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(7.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 500.0,
                    ),
                  ],
                )),
          ),
        ))
    .toList();
