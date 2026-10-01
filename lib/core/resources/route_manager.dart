import 'package:flutter/material.dart';


import '../../view/screens/login/screen/login_page.dart';
import '../../view/screens/on_bourding/screen/on_bourding_page.dart';
import '../../view/screens/splach_page/screens/splach_page.dart';
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
