import 'package:bloc_counter/presentation/home_screen.dart';
import 'package:bloc_counter/presentation/second_screen.dart';
import 'package:bloc_counter/presentation/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: 'HomeScreen',
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(
            title: 'SecondScreen',
            color: Colors.blueAccent,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
            title: 'ThirdScreen',
            color: Colors.blueAccent,
          ),
        );
      default:
        return null;
    }
  }
}
