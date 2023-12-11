import 'package:flutter/material.dart';
import 'package:poc_flutter_startup/features/startup/startup_widget.dart';
import 'package:poc_flutter_startup/widgets/app_logo.dart';

class SplashWidget extends StatelessWidget {
  static String path = '/splash';

  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO:
    //    startup view, focus on showing app branding

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, StartupWidget.path);
    });

    return const Scaffold(
      body: Center(child: AppLogo()),
    );
  }
}
