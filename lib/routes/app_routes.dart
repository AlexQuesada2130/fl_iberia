import 'package:fl_pruebaexamen/models/modals.dart';
import 'package:fl_pruebaexamen/screens/EspaciosScreen.dart';
import 'package:fl_pruebaexamen/screens/OrganizaViajeScreen.dart';
import 'package:fl_pruebaexamen/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home',
      screen: const HomeScreen(),
    ),
  ];

  static final secondMenu = <MenuOption>[
    MenuOption(
      route: 'organiza',
      icon: Icons.bus_alert,
      name: 'Organiza tu viaje',
      screen: const Organizaviajescreen(),
    ),
    MenuOption(
      route: 'espacios',
      icon: Icons.account_balance,
      name: 'Espacios Culturales',
      screen: const Espaciosscreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    for (final option in secondMenu) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
