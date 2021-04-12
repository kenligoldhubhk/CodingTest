
import 'package:flutter/material.dart';
import 'dart:ui';

class FXColor {
  static const Color lightBlack = Color(0xff686C71);
  static const Color gray = Color(0x993C3C43);
  static const Color textGray = Color(0xff7A869A);
  static const Color opacityGray = Color(0x953C3C43);
  static const Color lightGray = Color(0xffC1C7D0);
  static const Color veryLightGray = Color(0xffF2F4F7);
  static const Color orange = Color(0xffFAA61A);
  static const Color middleBlack = Color(0xff4A4A4A);
  static const Color untabColor = Color(0xffCCCCCC);
  static const Color grayLine = Color(0xcc4E5053);
  static const Color inputBorder = Color(0x1A4E5053);
  static const Color mainBlueColor = Color(0xff009FDD);
  static const Color mainDeepBlueColor = Color(0xff390ddd);
  static const Color grayTextColor = Color(0xff687671);
  static const Color blackColor = Color(0xFF002251);
}

class FXUI {
  static double statusTop = MediaQueryData.fromWindow(window).padding.top;
  static const double inputHeight = 50;
  static const defaultCode = "86";
  static const pinCodeType = {'setPin': 1, 'updatePin': 2};
  static TextStyle normalTextStyle =
  TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'packages/euruswallet/SFProDisplay');
  static TextStyle titleTextStyle =
  TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'packages/euruswallet/SFProDisplay');
  static InputBorder inputBorder = new OutlineInputBorder(
  borderSide: BorderSide(width: 1,color: Colors.transparent),
  borderRadius: const BorderRadius.all(
  const Radius.circular(20.0),
  ));
  static TextStyle inputStyle =
      TextStyle(color: FXColor.middleBlack, fontSize: 16,fontFamily: 'packages/euruswallet/SFProDisplay');
  static TextStyle hintStyle = TextStyle(
      color: FXColor.untabColor, fontSize: 14, fontWeight: FontWeight.w500,fontFamily: 'packages/euruswallet/SFProDisplay');
  static InputDecoration inputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 15.5,horizontal: 15.5),
    focusedBorder: FXUI.inputBorder,
    disabledBorder: FXUI.inputBorder,
    enabledBorder: FXUI.inputBorder,
    border:  FXUI.inputBorder,
    hintStyle: FXUI.hintStyle,
    hintMaxLines: 4,
    errorMaxLines: 4,
    fillColor: FXColor.veryLightGray,
    filled: true,
    counterText: "", //控制最大字符是否显示
  );
  static BoxDecoration circleBoxDecoration = BoxDecoration(
    color: Colors.white,
  borderRadius: BorderRadius.circular(15),
  );
}
