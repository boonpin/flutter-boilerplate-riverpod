import 'package:flutter/material.dart';

import 'package:poc_flutter_startup/features/hello_world/hello_world_widget.dart';
import 'package:poc_flutter_startup/features/main/main_widget.dart';
import 'package:poc_flutter_startup/features/splash/splash_widget.dart';
import 'package:poc_flutter_startup/features/startup/startup_widget.dart';

var appRoutes = {
  SplashWidget.path: (context) => const SplashWidget(),
  StartupWidget.path: (context) => const StartupWidget(),
  MainWidget.path: (context) => const MainWidget(),
  HelloWorldWidget.path: (context) => const HelloWorldWidget(),
};
