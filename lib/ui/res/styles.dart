import 'package:flutter/material.dart';

class AppStrings {
  static const appTitle = 'Place';
  static const appBar = '''
  Список 
  интересных мест
  ''';
  static const buttonText = 'ПОСТРОИТЬ МАРШРУТ';
  static const workTime = 'закрыто до 9:00';
  static const toFavorites = 'В Избранное';
  static const toPlan = 'Запланировать';
}

class AppAssets {
  static const favorite = 'res/images/icons/heart.svg';
  static const darkFavorite = 'res/images/icons/favorite.svg';
  static const calendar = 'res/images/icons/calendar.svg';
  static const route = 'res/images/icons/Union.svg';
  static const buttonBack = 'res/images/icons/ARROW.svg';
  static const line = 'res/images/icons/Vector 95.svg';
}

class AppTypography {
  static const textText32Bold = TextStyle(
    fontSize: 32.0,
    height: 1.36,
    fontWeight: FontWeight.w700,
  );
  static const textText24Bold = TextStyle(
    fontSize: 24.0,
    height: 1.25,
    fontWeight: FontWeight.w700,
  );
  static const textText16Regular = TextStyle(
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
  static const textText14Regular = TextStyle(
    fontSize: 14.0,
    height: 1.18,
    fontWeight: FontWeight.w400,
  );
  static const textText14Bold = TextStyle(
    fontSize: 14.0,
    height: 1.18,
    fontWeight: FontWeight.w700,
  );
}

class AppColors {
  static const appColor = Color(0xFF3B3E5B);
  static const buttonColor = Color(0xFF4CAF50);
  static const cardBackColor = Color(0xFFF5F5F5);
  static const textGrayColor = Color(0xFF7C7E92);
  static const textWhiteColor = Color(0xFFFFFFFF);
}
