import 'package:flutter/material.dart';

class AppStrings {
  static const appTitleFavorit = 'Избранное';
  static const appTitle = 'Place';
  static const appBar = '''
  Список 
  интересных мест
  ''';
  static const buttonText = 'ПОСТРОИТЬ МАРШРУТ';
  static const workTime = 'закрыто до 9:00';
  static const toFavorites = 'В Избранное';
  static const toPlan = 'Запланировать';
  static const planningDate = 'Запланировано на 12 окт. 2020';
  static const wantToVisit = 'Хочу посетить';
  static const visited = 'Посетил';
  static const textEmty = 'Пусто';
  static const markPlace = '''
Отмечайте понравившиеся
места и они появиятся здесь.''';
  static const goalAcheced = 'Цель достигнута 12 окт. 2020';
  static const complateTheRout = '''
Завершите маршрут,
чтобы место попало сюда.''';
}

class AppAssets {
  static const favorite = 'res/images/icons/heart.svg';
  static const darkFavorite = 'res/images/icons/favorite.svg';
  static const calendar = 'res/images/icons/calendar.svg';
  static const route = 'res/images/icons/Union.svg';
  static const buttonBack = 'res/images/icons/ARROW.svg';
  static const line = 'res/images/icons/Vector 95.svg';
  static const icCalendar = 'res/images/icons/icCalendar.svg';
  static const icHeartFull = 'res/images/icons/icHeartFull.svg';
  static const icMap = 'res/images/icons/icMap.svg';
  static const icSettings = 'res/images/icons/icSettings.svg';
  static const icDelite = 'res/images/icons/icDelite.svg';
  static const icCard = 'res/images/icons/icCard.svg';
  static const icShare = 'res/images/icons/icShare.svg';
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
  static const textText18Medium = TextStyle(
    fontSize: 18.0,
    height: 1.18,
    fontWeight: FontWeight.w500,
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
