import 'package:flutter/material.dart';

const kAppThemeColor = Color(0xFF0E770E);
const kAscentGreen = Color(0xFF84B26B);
const kSecondaryAppThemeColor = Color(0xFFFD3C67);
const kTextColorWhite = Color(0xFFFFFFFF);
const kBlackTextColor = Color(0xFF000000);
const kOrangeAscent = Color(0xFFF09E2D);


const kButtonTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w600,
  color: Color(0xFFF0F3FC),
  fontSize: 14,
);

var kThemedTextTitleStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w600,
  color: kOrangeAscent,
  fontSize: 15,
);

const kSubTitleDarkText = TextStyle(
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w600,
  fontSize: 14,
  color: kBlackTextColor,
);

const kBodyText = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 16,
  color: kBlackTextColor,
);

var kCheckedButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  backgroundColor: MaterialStateProperty.all<Color>(kAscentGreen),
);

var kUncheckedButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
);