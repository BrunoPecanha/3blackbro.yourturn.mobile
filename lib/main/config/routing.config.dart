import 'package:flutter/material.dart';
import 'package:the_3_black_bro/presentation/screens/login.screen.dart';
import 'package:the_3_black_bro/presentation/screens/splash.screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => Splash(),
  '/login': (context) => Login(),
};