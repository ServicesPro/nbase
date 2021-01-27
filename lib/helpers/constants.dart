import 'package:flutter/material.dart';

const Color kYellow = Color(0xffFDC054);
const Color kMediumYellow = Color(0xffFDB846);
const Color kDarkYellow = Color(0xffE99E22);
const Color kTransparentYellow = Color.fromRGBO(253, 184, 70, 0.7);
const Color kDarkGrey = Color(0xff202020);

const LinearGradient kMainButton = LinearGradient(
  colors: [
    Color.fromRGBO(236, 60, 3, 1),
    Color.fromRGBO(234, 60, 3, 1),
    Color.fromRGBO(216, 78, 16, 1),
  ],
  begin: FractionalOffset.topCenter,
  end: FractionalOffset.bottomCenter,
);

const List<BoxShadow> kShadow = [
  BoxShadow(
    color: Colors.black12,
    offset: Offset(0, 3),
    blurRadius: 6,
  ),
];

