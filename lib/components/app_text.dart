// components/app_text.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saifalmirgab/components/colorsapp.dart';

double getScaletFactor(BuildContext context)
{
  double widthscreen = MediaQuery.of(context).size.width;

  if( widthscreen <= 600 )
  {
    return widthscreen/750;
  }else if( widthscreen <= 1200 )
  {
    return widthscreen/900;
  }
  else
  {
    return widthscreen / 1750;
  }
}

double getResponsiveScaleFactor(
  BuildContext context,
  {
    required double fontSize,
  }
) {
  double ScaletFactor = getScaletFactor(context);
  double responsiveFontSize = fontSize * ScaletFactor;

  double lowerLimit = responsiveFontSize * 0.8;
  double upperLimit = responsiveFontSize * 0.8;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

abstract class AppTextStyles {
  static TextStyle style16w500(BuildContext context) {
    return TextStyle(
      fontFamily: "Tajawal",
      fontSize: getResponsiveScaleFactor(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: AppColors.BabyBlack,
    );
  }
  static TextStyle style32w800(BuildContext context) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: getResponsiveScaleFactor(context, fontSize: 32),
      fontWeight: FontWeight.w500,
      color: AppColors.White,
    );
  }
  static TextStyle style48w800(BuildContext context) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: getResponsiveScaleFactor(context, fontSize: 48),
      fontWeight: FontWeight.w800,
      color: AppColors.BabyBlack,
    );
  }
  static TextStyle style12w500(BuildContext context) {
    return TextStyle(
      fontFamily: "Tajawal",
      fontSize: getResponsiveScaleFactor(context, fontSize: 12),
      fontWeight: FontWeight.w500,
      color: AppColors.White,
    );
  }
  static TextStyle style32w500(BuildContext context) {
    return TextStyle(
      fontFamily: "Lemonada",
      fontSize: getResponsiveScaleFactor(context, fontSize: 32),
      fontWeight: FontWeight.w500,
      color: AppColors.White,
    );
  }
  static TextStyle style132w800(BuildContext context) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: getResponsiveScaleFactor(context, fontSize: 132),
      fontWeight: FontWeight.w800,
      color: AppColors.Yellow,
    );
  }
  static TextStyle style80w800(BuildContext context) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: getResponsiveScaleFactor(context, fontSize: 80),
      fontWeight: FontWeight.w800,
      color: AppColors.White,
    );
  }
  static TextStyle style56w800(BuildContext context) {
    return TextStyle(
      fontFamily: "Cairo",
      fontSize: getResponsiveScaleFactor(context, fontSize: 56),
      fontWeight: FontWeight.w800,
      color: AppColors.BabyBlack,
    );
  }
  static TextStyle style24w500(BuildContext context) {
    return TextStyle(
      fontFamily: "Tajawal",
      fontSize: getResponsiveScaleFactor(context, fontSize: 24),
      fontWeight: FontWeight.w500,
      color: AppColors.BabyBlack,
    );
  }
}