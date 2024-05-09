import 'package:flutter/material.dart';
import 'package:safereturn/app/modules/auth/view/forgot_pass.dart';
import 'package:safereturn/app/modules/auth/view/login.dart';
import 'package:safereturn/app/modules/auth/view/otp.dart';
import 'package:safereturn/app/modules/auth/view/register.dart';
import 'package:safereturn/app/modules/onboarding/view/onboarding.dart';

class AppRoute {
  static Route easyAnimationRoute(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static const splash = SplashScreen.routeName;
  static const login = Login.routeName;
  static const register = Register.routeName;
  static const forgretpass = ForgetPassword.routeName;
  static const otp = Otp.routeName;


  static Route<dynamic> generalRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return easyAnimationRoute(const SplashScreen());
      case login:
        return easyAnimationRoute(const Login());
      case register:
        return easyAnimationRoute(const Register());
      case forgretpass:
        return easyAnimationRoute(const ForgetPassword());
      case otp:
        return easyAnimationRoute(const Otp());  
      default:
        return easyAnimationRoute(const Login());
    }
  }
}
