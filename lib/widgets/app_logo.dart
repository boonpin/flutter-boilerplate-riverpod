import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'public/assets/images/app_logo.png',
      //width: 120,
      fit: BoxFit.fitWidth,
    );
  }
}
