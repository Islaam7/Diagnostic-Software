import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graduatio_project/utils/colors.dart';

class ThemeCubit extends Cubit<ThemeData>{
  ThemeCubit() : super(lightTheme);
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
      textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.textcolors),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.secondry),
      )
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.background),
      )
  );

  void toggleTheme() {
    emit( state == lightTheme? darkTheme : lightTheme);
  }

}