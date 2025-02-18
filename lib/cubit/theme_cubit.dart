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
class ThemeCubit extends Cubit<ThemeData>{
  ThemeCubit() : super(themeData[AppTheme.light]!);

  static final Map<AppTheme, ThemeData>  themeData = {
  AppTheme.light : ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  textTheme: TextTheme(
  bodyLarge: TextStyle(fontSize: 16, color: AppColors.textcolors),
  bodyMedium: TextStyle(fontSize: 14, color: AppColors.secondry),
  )
  ),
    AppTheme.dark : ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
  bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
  bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
  )
  ),
    AppTheme.blue: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.lightBlue[50],
    ),
    AppTheme.red: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.red[50],
    ),
    AppTheme.green: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.green[50],
    ),
    AppTheme.yellow: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.yellow[700],
      scaffoldBackgroundColor: Colors.yellow[50],
    ),
    AppTheme.purple: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.purple[50],
    ),
    AppTheme.pink: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.pink,
      scaffoldBackgroundColor: Colors.pink[50],
    ),
  };

  void changeTheme(AppTheme theme) {
    emit(themeData[theme]!);
  }

}