import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

const kSpacingUnit = 10.0;
Widget horizontalSpaceTiny = SizedBox(width: kSpacingUnit * 2);
Widget horizontalSpaceSmall = SizedBox(width: kSpacingUnit);
Widget horizontalSpaceMedium = SizedBox(width: kSpacingUnit * 2 + 5);

Widget verticalSpaceTiny = SizedBox(height: kSpacingUnit / 2);
Widget verticalSpaceSmall = SizedBox(height: kSpacingUnit);
Widget verticalSpaceMedium = SizedBox(height: kSpacingUnit * 2);
Widget verticalSpaceLarge = SizedBox(height: kSpacingUnit * 5);
Widget verticalSpaceMassive = SizedBox(height: kSpacingUnit * 12);

class UiHelper {
  double width = 0.0;
  double height = 0.0;
  double safeAreaHorizontal = 0.0;
  double safeAreaVertical = 0.0;
  double screenHeightWithoutSafeArea = 0.0;
  double screenWidthWithoutSafeArea = 0.0;

  UiHelper();

  UiHelper.mediaQuery({required BuildContext context}) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    width = mediaQuery.size.width;
    height = mediaQuery.size.height;
    safeAreaHorizontal = mediaQuery.padding.left + mediaQuery.padding.right;
    safeAreaVertical = mediaQuery.padding.top + mediaQuery.padding.bottom;
    screenHeightWithoutSafeArea = height - safeAreaVertical;
    screenWidthWithoutSafeArea = width - safeAreaHorizontal;
  }

  static BoxDecoration neumorphicEffect() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade300,
        boxShadow: [
          BoxShadow(
              offset: Offset(10, 10), color: Colors.black38, blurRadius: 25),
          BoxShadow(
              offset: Offset(-10, -10),
              color: Colors.white.withOpacity(0.85),
              blurRadius: 25)
        ]);
  }
}

Widget spacedDivider = Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: kSpacingUnit / 2),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double kHeight =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;
double kWidth =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0}) =>
    (kHeight - offsetBy) / dividedBy;

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0}) =>
    (kWidth - offsetBy) / dividedBy;

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);
// Box Decorations

BoxDecoration fieldDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Colors.grey);

BoxDecoration disabledFieldDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Colors.grey);

// Field Variables

double fieldHeight = kSpacingUnit * 5;
double smallFieldHeight = kSpacingUnit * 4;
double inputFieldBottomMargin = kSpacingUnit * 3;
double inputFieldSmallBottomMargin = 0;
EdgeInsets fieldPadding = EdgeInsets.symmetric(horizontal: kSpacingUnit + 5);
EdgeInsets largeFieldPadding = EdgeInsets.symmetric(
    horizontal: kSpacingUnit + 5, vertical: kSpacingUnit + 5);

// Text Variables
TextStyle buttonTitleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20,
  // color: kLightPrimaryColor,
);
