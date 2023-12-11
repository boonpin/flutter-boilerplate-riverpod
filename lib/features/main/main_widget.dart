import 'package:flutter/material.dart';
import 'package:poc_flutter_startup/widgets/app_logo.dart';

class MainWidget extends StatelessWidget {
  static String path = '/main';

  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO:
    //  main screen

    return const Scaffold(
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [AppLogo(), Text('MAIN SCREEN')])));
  }
}
