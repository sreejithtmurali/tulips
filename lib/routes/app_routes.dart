import 'package:flutter/material.dart';
import 'package:tulips/presentation/home_container_screen/home_container_screen.dart';
import 'package:tulips/presentation/splash_screen/splash_screen.dart';
import 'package:tulips/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:tulips/presentation/facial_screen/facial_screen.dart';
import 'package:tulips/presentation/home_one_screen/home_one_screen.dart';
import 'package:tulips/presentation/onboard_screen/onboard_screen.dart';
import 'package:tulips/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:tulips/presentation/otp_screen/otp_screen.dart';
import 'package:tulips/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String facialScreen = '/facial_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String onboardScreen = '/onboard_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String otpScreen = '/otp_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    splashScreen: (context) => SplashScreen(),
    signUpScreen: (context) => SignUpScreen(),
    facialScreen: (context) => FacialScreen(),
    homeOneScreen: (context) => HomeOneScreen(),
    onboardScreen: (context) => OnboardScreen(),
    signInScreen: (context) => SignInScreen(),
    otpScreen: (context) => OtpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
