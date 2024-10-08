// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';

// enum CounterEvent { increment, decrement }

// class CounterBloc extends Bloc<CounterEvent, int> {
//   CounterBloc() : super(0);

//   Stream<int> mapEventToState(CounterEvent event) async* {
//     switch (event) {
//       case CounterEvent.increment:
//         yield state + 1;
//         break;
//       case CounterEvent.decrement:
//         yield state - 1;
//         break;
//     }
//     throw UnimplementedError();
//   }
// }

// Future<void> main(List<String> args) async {
//   final bloc = CounterBloc();

//   final streamSubscription = bloc.stream.listen(print);

//   bloc.add(CounterEvent.increment);

//   await Future.delayed(Duration.zero);
//   await bloc.close();
// }

// void main(List<String> args) {
//   final cubit = CounterCubit();
//   print(cubit.state);
//   cubit.increment();
//   cubit.increment();
//   cubit.decrement();
//   print(cubit.state);
// }

// void main() {
//   runApp(const MyApp());
// }
