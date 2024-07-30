import 'package:flutter/material.dart';
import 'package:furniture/screens/auth/login/login_screen.dart';
import 'package:furniture/screens/auth/register/register_screen.dart';
import 'package:furniture/screens/home/home_screen.dart';
import 'package:furniture/screens/on_board/on_board_screen.dart';
import 'package:furniture/screens/splash/splash_screen.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return navigator(widget: const SplashScreen());
      case RouteNames.onBoard:
        return navigator(widget: const OnBoardScreen());
      case RouteNames.login:
        return navigator(widget: const LoginScreen());
      case RouteNames.register:
        return navigator(widget: const RegisterScreen());
      case RouteNames.home:
        return navigator(widget: const HomeScreen());
      default:
        return navigator(
            widget: const Scaffold(
          body: Center(
            child: Text("This page does not exist"),
          ),
        ));
    }
  }

  static navigator({required Widget widget}) =>
      MaterialPageRoute(builder: (context) => widget);
}

class RouteNames {
  static const String splash = "/";
  static const String onBoard = "/on_board";
  static const String login = '/login';
  static const String register = "/register";
  static const String home = '/home';
}
