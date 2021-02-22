import 'dart:ui';

import 'package:flutter/material.dart';

/// Application theme

const kSpacingUnit = 10;
const kLightSecondaryColor = Color(0xfff4f6f9);
const kDarkSecondaryColor = Color(0xFFFCA704);
const kLightPrimaryColor = Color(0xFFFFFFFF);
const kDarkPrimaryColor = Color(0xff024673);
const kDarkPrimaryColor2 = Color(0xff002a66);
const kBackgroundLight = Color(0xFFF2F3F7);
const kBackgroundDark = Color(0xFF2A2A2A);
const kDividerLight = Color(0xFFFFFFFF);
const kDividerDark = Color(0xFF444444);
const kAccentColor = Color(0xFFFB5215);
const kTextLighter = Color(0xFFFBFBFB);
const kTextDarker = Color(0xFF17262A);
const kTextDark = Color(0xFF333333);
const kTextLight = Color(0xFFEEEEEE);
const kDarkColor = Color(0xFF000000);
const kIconLight = Color(0xFFFBFBFB);
const kIconDark = Color(0xFF666666);
const kOrange = Color(0xFFFB8C00);
const kColor = Color(0xff290B71);
const kLight = Color(0xFFFDFDFD);
const kDark = Color(0xFF333333);
const ksSe = Color(0xff80d3f9);
const ksS = Color(0xff039be4);
const kse = Color(0xfffff8c3);
const ksp = Color(0xfffce193);
const ks = Color(0xffB1EAF1);
const ksPp = Color(0xfff37409);
const ksw = Color(0xffef6c00);

final kTitleLightTextStyle = TextStyle(
    fontSize: kSpacingUnit * 3, fontWeight: FontWeight.w300, letterSpacing: 2);
final kStrongTitleTextStyle = TextStyle(
    fontSize: kSpacingUnit * 4, fontWeight: FontWeight.bold, letterSpacing: 2);
final kCaptionLightTextStyle =
    TextStyle(fontSize: kSpacingUnit * 1.8, fontWeight: FontWeight.w700);
final kCaptionTextStyle =
    TextStyle(fontSize: kSpacingUnit * 1.3, fontWeight: FontWeight.w300);
final kTitleTextStyle = TextStyle(
    fontSize: kSpacingUnit * 1.7,
    fontWeight: FontWeight.w700,
    letterSpacing: 2);
final kButtonTextStyle = TextStyle(
  fontSize: kSpacingUnit * 1.5,
  fontWeight: FontWeight.w400,
);
final circularIndicator = CircularProgressIndicator(
  valueColor: AlwaysStoppedAnimation<Color>(kDarkSecondaryColor),
);

double height =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;
double width =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width;

ThemeData get darkTheme {
  final base = ThemeData.dark();
  return base.copyWith(
    accentColor: kAccentColor,
    brightness: Brightness.dark,
    canvasColor: kDarkPrimaryColor,
    primaryColor: kLight,
    primaryColorLight: kDark,
    buttonColor: kDarkSecondaryColor,
    backgroundColor: kDarkSecondaryColor,
    cardColor: kDark,
    dividerColor: kDividerLight,
    scaffoldBackgroundColor: kBackgroundDark,
    toggleableActiveColor: kAccentColor,
    primaryIconTheme: base.iconTheme.copyWith(color: kIconDark),
    buttonTheme: base.buttonTheme.copyWith(buttonColor: kDarkSecondaryColor),
    cardTheme: base.cardTheme.copyWith(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    textTheme: _buildTextTheme(base.textTheme, kTextLight, kTextLighter),
    primaryTextTheme:
        _buildTextTheme(base.primaryTextTheme, kTextLight, kTextLighter),
    accentTextTheme:
        _buildTextTheme(base.accentTextTheme, kTextLight, kTextLighter),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: kDark,
      contentTextStyle: base.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: kTextLight,
        fontFamily: 'Montserrat',
      ),
    ),
    appBarTheme: base.appBarTheme
        .copyWith(brightness: Brightness.dark, color: kDark, elevation: 4),
    iconTheme: base.iconTheme.copyWith(color: kAccentColor),
    dialogTheme: base.dialogTheme.copyWith(
      contentTextStyle: TextStyle(color: kDarkColor),
      backgroundColor: kDarkPrimaryColor,
    ),
  );
}

ThemeData get theme {
  final base = ThemeData.light();
  return base.copyWith(
    accentColor: kAccentColor,
    brightness: Brightness.light,
    buttonColor: kAccentColor,
    buttonTheme: base.buttonTheme.copyWith(buttonColor: kAccentColor),
    canvasColor: kLightPrimaryColor,
    primaryColor: kDark,
    cardColor: kLightPrimaryColor,
    primaryColorLight: kLightPrimaryColor,
    backgroundColor: kLightSecondaryColor,
    scaffoldBackgroundColor: kBackgroundLight,
    primaryIconTheme: base.iconTheme.copyWith(color: kIconDark),
    toggleableActiveColor: kOrange,
    cardTheme: base.cardTheme.copyWith(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    dialogTheme: base.dialogTheme.copyWith(
      contentTextStyle: TextStyle(color: kDarkColor),
    ),
    appBarTheme: base.appBarTheme
        .copyWith(brightness: Brightness.light, color: kLight, elevation: 4),
    iconTheme: base.iconTheme.copyWith(color: kAccentColor),
    primaryTextTheme:
        _buildTextTheme(base.primaryTextTheme, kTextDark, kTextDarker),
    accentTextTheme:
        _buildTextTheme(base.accentTextTheme, kTextDark, kTextDarker),
    textTheme: _buildTextTheme(base.textTheme, kTextDark, kTextDark),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: kLight,
      contentTextStyle: base.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: kTextDark,
        fontFamily: 'Rubik',
      ),
    ),
  );
}

TextTheme _buildTextTheme(TextTheme base, Color displayColor, Color bodyColor) {
  return TextTheme()
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          fontSize: 20,
        ),
        headline6: base.headline6!.copyWith(
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          fontSize: 20,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        subtitle1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
          fontFamily: 'Rubik',
          displayColor: displayColor,
          bodyColor: bodyColor);
}

const kAppBarShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(32),
    bottomRight: Radius.circular(32),
  ),
);
