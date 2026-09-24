import 'package:flutter/material.dart';
import 'package:tech_cycle/view/screens/create_new_password/screen/create_new_password_page.dart';
import 'package:tech_cycle/view/screens/forget_password/screen/forget_password_page.dart';
import 'package:tech_cycle/view/screens/home/screen/home_page.dart';
import 'package:tech_cycle/view/screens/login/screen/login_page.dart';
import 'package:tech_cycle/view/screens/on_bourding/screen/on_bourding_page.dart';
import 'package:tech_cycle/view/screens/sign_up/screen/sign_up_page.dart';
import 'package:tech_cycle/view/screens/splach_page/screens/splach_page.dart';

import '../../view/screens/login/screen/login_page.dart';
import '../widget/un_known_page.dart';

class RoutesManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget screen;
    String? name = settings.name;
    if (name == RouteName.splach.routeName) {
      screen = const SplachPage();
    } else if (name == RouteName.onbourding.routeName) {
      screen = const OnBourdingPage();
    } else if (name == RouteName.login.routeName) {
      screen = const LoginPage();
    }  else {
      screen = UnknownRouteScreen(route: settings.name ?? "");
    }
    return MaterialPageRoute(builder: (context) => screen, settings: settings);
  }
}

enum RouteName {
  splach("/"),
  onbourding("/onbourding"),
  login("/login");





  final String routeName;

  const RouteName(this.routeName);
}

///////////////////
