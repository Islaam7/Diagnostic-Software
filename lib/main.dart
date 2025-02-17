
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduatio_project/cubit/theme_cubit.dart';
import 'package:graduatio_project/utils/settings_screen.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => ThemeCubit(),
    child: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(builder: (context, theme) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: SettingsScreen(),
      );
    });

  }


}