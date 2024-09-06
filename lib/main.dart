import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main(List<String> args) {
  final cubit = CounterCubit();
  print(cubit.state);
  cubit.increment();
  cubit.increment();
  cubit.decrement();
  print(cubit.state);
}

// void main() {
//   runApp(const MyApp());
// }
