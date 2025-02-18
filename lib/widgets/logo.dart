import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Image.asset(
          'lib/assets/logo/logo.png',
          width: 35,
          height: 35,
        )) ;
  }
}