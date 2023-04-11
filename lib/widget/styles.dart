import 'package:flutter/material.dart';
import 'package:tickety/widget/colors.dart';

// Text Styles

const TextStyle logoStyle =
  TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: primary);

const TextStyle mainCardTitleStyle = TextStyle(
  color: white,
  fontSize: 22,
  fontWeight: FontWeight.w700,
  shadows: <Shadow>[
    Shadow(
      color: Color.fromARGB(125, 0, 0, 0),
      offset: Offset(0, 2),
      blurRadius: 16)]);

const TextStyle darkTextBold12 =
  TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: black);

const TextStyle midTextBold12 =
  TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: midDark);

const TextStyle textBold12 =
  TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: white);

const TextStyle textMedium10 =
  TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: white);

const TextStyle clearTextMedium10 =
  TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: white);
//----

// Shadows

const BoxShadow boxShadow = BoxShadow(
    color: boxShadowColor,
    spreadRadius: 1,
    blurRadius: 12,
    offset: Offset(0, 8));
//----

// Spacing (Paddings and Margins)

const EdgeInsets spacingAll = EdgeInsets.all(20);
const EdgeInsets spacingRight = EdgeInsets.fromLTRB(0, 0, 0, 20);
const EdgeInsets spacingLeft = EdgeInsets.fromLTRB(0, 20, 0, 0);
const EdgeInsets spacingLeftAndRight = EdgeInsets.fromLTRB(0, 20, 0, 20);
const EdgeInsets spacingTop = EdgeInsets.fromLTRB(20, 0, 0, 0);
const EdgeInsets spacingBottom = EdgeInsets.fromLTRB(0, 0, 20, 0);
const EdgeInsets spacingTopAndBottom = EdgeInsets.fromLTRB(20, 0, 20, 0);
//----

// Radius

const BorderRadius borderAll8 = BorderRadius.all(Radius.circular(8));
const BorderRadius borderAll16 = BorderRadius.all(Radius.circular(16));

// Gradient

LinearGradient cardTitleGradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0),
  ],
);
