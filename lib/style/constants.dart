import 'package:flutter/material.dart';

const kWhiteBlue = Color.fromRGBO(0, 41, 255, 1.0);
const kDarkBlue = Color.fromRGBO(8, 31, 150, 1.0);
const kBlue = Color.fromRGBO(0, 41, 255, 1.0);
const kBlueLight = Color.fromRGBO(53, 134, 255, 1.00);
const kBlueSecondary = Color.fromRGBO(53, 134, 255, 1.00);
const kBlueSecondaryTrans = Color.fromRGBO(53, 134, 255, .5);
const kAqua = Color(0xFF00E0FF);
const kBlack = Color.fromRGBO(37, 44, 81, 1.0);
const kBlueInputFillTrans = Color.fromRGBO(180, 188, 232, .3);
const kBlueInputTextTrans = Color.fromRGBO(180, 188, 232, 1.0);


const kGradientBackGround = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.white, kWhiteBlue],
    stops: [0.3, 1],
  ),
);

const kGradientBanner = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [kBlue, kBlueLight],
    stops: [0.1, 1],
  ),
);


// {
//   FontWeight.w100: 'Thin',
//   FontWeight.w200: 'ExtraLight',
//   FontWeight.w300: 'Light',
//   FontWeight.w400: 'Regular',
//   FontWeight.w500: 'Medium',
//   FontWeight.w600: 'SemiBold',
//   FontWeight.w700: 'Bold',
//   FontWeight.w800: 'ExtraBold',
//   FontWeight.w900: 'Black',
// }