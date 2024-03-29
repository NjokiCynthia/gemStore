import 'package:flutter/material.dart';

Widget heading1(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 25.0,
        color: color,
        fontFamily: 'ProductSans'),
    textAlign: textAlign,
  );
}

Widget heading2(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.0,
        color: color,
        fontFamily: 'ProductSans'),
    textAlign: textAlign,
  );
}

Widget heading3(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.0,
        color: color,
        fontFamily: 'SegoeUI'),
    textAlign: textAlign,
  );
}

Widget subtitle1(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        color: color,
        fontFamily: 'SegoeUI'),
    textAlign: textAlign,
  );
}

Widget subtitle2(
    {String? text,
    Color? color,
    TextAlign textAlign = TextAlign.center,
    double? fontSize}) {
  return Text(
    text!,
    style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: fontSize,
        color: color,
        fontFamily: 'SegoeUI'),
    textAlign: textAlign,
  );
}

Widget subtitle3(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
        color: color,
        fontFamily: 'SegoeUI'),
    textAlign: textAlign,
  );
}

Widget customTitle1(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center,
    double fontSize = 20.0,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'SegoeUI'}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    ),
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
  );
}

Widget customTitle(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'SegoeUI'}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    ),
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
  );
}

Widget customTitle2(
    {required String text,
    Color? color,
    TextAlign textAlign = TextAlign.center,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'SegoeUI'}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    ),
    textAlign: textAlign,
    overflow: TextOverflow.clip,
  );
}
