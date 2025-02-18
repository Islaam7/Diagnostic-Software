import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graduatio_project/utils/colors.dart';

enum AppTheme {
  light,
  dark,
  blue,
  red,
  green,
  yellow,
  purple,
  pink,
}

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(themeData[AppTheme.light]!);

  static final Map<AppTheme, ThemeData> themeData = {
    AppTheme.light: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
            surface: AppColors.background,
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            onPrimary: AppColors.black,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.black),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.secondry),
        )),
    AppTheme.dark: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
    AppTheme.blue: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
    AppTheme.pink: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
    AppTheme.green: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
    AppTheme.purple: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
    AppTheme.red: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
    AppTheme.yellow: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondry,
            outline: AppColors.stroke),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
          bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
        )),
  };

  void changeTheme(AppTheme theme) {
    emit(themeData[theme]!);
  }
}
