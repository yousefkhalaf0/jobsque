import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/core/routing/routes.dart';
import '../../features/splash_screen/view/screens/splash_screen.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashScreenRoute:
      return MaterialPageRoute(builder: (_) => const Splash());
  }
  return null;
}
