import 'package:ecom_backend/config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: AppColors.backgroundColor,
        primary: AppColors.primaryColor,
        onBackground: AppColors.onBackgroundColor,
        primaryContainer: AppColors.primaryContainerColor,
        onPrimaryContainer: AppColors.onPrimaryContainerColor),
    textTheme: TextTheme(
        headlineMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackgroundColor),
        headlineSmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackgroundColor),
        bodyMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackgroundColor),
        bodySmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackgroundColor),
        labelMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColors.onPrimaryContainerColor)));

var darkTheme = ThemeData(brightness: Brightness.dark);
