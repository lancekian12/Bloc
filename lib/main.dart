import 'package:bloc_counter/logic/cubit/counter_cubit.dart';
import 'package:bloc_counter/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_counter/presentation/second_screen.dart';
import 'package:bloc_counter/presentation/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Concept',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                  title: 'HomeScreen',
                  color: Colors.blueAccent,
                ),
              ),
          '/second': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(
                  title: 'Second Screen',
                  color: Colors.redAccent,
                ),
              ),
          '/third': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const ThirdScreen(
                  title: 'Third Screen',
                  color: Colors.greenAccent,
                ),
              ),
        },
      ),
    );
  }
}
