import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduatio_project/cubit/theme_cubit.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              icon: Icon(
                  context.read<ThemeCubit>().state == ThemeCubit.lightTheme
                      ? Icons.dark_mode
                      : Icons.light_mode))
        ],
      ),
    );
  }
}
