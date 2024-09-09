import 'package:bloc_counter/logic/cubit/counter_cubit.dart';
import 'package:bloc_counter/presentation/home_screen.dart';
import 'package:bloc_counter/presentation/second_screen.dart';
import 'package:bloc_counter/presentation/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const HomeScreen(
              title: 'HomeScreen',
              color: Colors.blueAccent,
            ),
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const SecondScreen(
              title: 'SecondScreen',
              color: Colors.blueAccent,
            ),
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const ThirdScreen(
              title: 'ThirdScreen',
              color: Colors.blueAccent,
            ),
          ),
        );
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
