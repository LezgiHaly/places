import 'package:flutter/material.dart';
import 'package:places/ui/res/styles.dart';

final lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: AppColors.whiteColor,
  ),
  scaffoldBackgroundColor: AppColors.whiteColor,
  backgroundColor: AppColors.whiteColor,
  bottomAppBarColor: AppColors.whiteColor,
  navigationBarTheme:
      const NavigationBarThemeData(backgroundColor: AppColors.colorDarkTheme),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: AppColors.buttonColor,
    unselectedItemColor: AppColors.appColor,
    backgroundColor: AppColors.whiteColor,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: AppTypography.textText32Bold.copyWith(
      color: AppColors.appColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: AppColors.textGrayColor),
    bodyText2: TextStyle(color: AppColors.appColor),
  ),
  cardColor: AppColors.cardBackColor,
  tabBarTheme: const TabBarTheme(
    labelStyle: TextStyle(color: AppColors.whiteColor),
    labelColor: AppColors.appColor,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppColors.buttonColor,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: AppColors.buttonColor,
    inactiveTrackColor: AppColors.textGrayColor.withOpacity(0.56),
  ),
);

final darkTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: AppColors.colorDarkTheme,
  ),
  scaffoldBackgroundColor: AppColors.colorDarkTheme,
  backgroundColor: AppColors.colorDarkTheme,
  bottomAppBarColor: AppColors.colorDarkTheme,
  navigationBarTheme:
      const NavigationBarThemeData(backgroundColor: AppColors.colorDarkTheme),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: AppColors.buttonColor,
    unselectedItemColor: AppColors.whiteColor,
    backgroundColor: AppColors.colorDarkTheme,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: AppTypography.textText32Bold.copyWith(
      color: AppColors.whiteColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: AppColors.textGrayColor),
    bodyText2: TextStyle(color: AppColors.whiteColor),
  ),
  cardColor: AppColors.blackDark,
  tabBarTheme: const TabBarTheme(
    labelStyle: TextStyle(color: AppColors.appColor),
    labelColor: AppColors.whiteColor,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppColors.buttonColor,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: AppColors.buttonColor,
    inactiveTrackColor: AppColors.textGrayColor.withOpacity(0.56),
  ),
);
