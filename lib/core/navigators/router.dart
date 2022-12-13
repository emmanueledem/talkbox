import 'package:flutter/material.dart';
import 'package:talkbox/features/auth/auth.dart';

import 'navigators.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.home:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const HomeScreen(),
      );
    case RouteName.continuewithPhoneNumber:
      return _getPageRoute(
          routeName: settings.name!, viewToShow: const ContinuewithPhoneNumber());

    default:
      return MaterialPageRoute<dynamic>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

Route<dynamic> _getPageRoute({
  required String routeName,
  required Widget viewToShow,
}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
