import 'package:flutter/material.dart';
import 'package:poc_flutter_startup/features/main/main_widget.dart';
import 'package:poc_flutter_startup/widgets/app_logo.dart';

class StartupWidget extends StatelessWidget {
  static String path = '/startup';

  const StartupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO:
    //  background loading to do all the startup process + start worker
    //  ui show loading and text on what process running at background
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, MainWidget.path);
    });

    return const Scaffold(
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [AppLogo(), Text('Loading ....')])));
  }
}
