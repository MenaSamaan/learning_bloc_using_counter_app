// ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc_using_counter_app/app.dart';
import 'package:learning_bloc_using_counter_app/counter/bloc/counter_bloc.dart';
import 'package:learning_bloc_using_counter_app/counter/bloc/counter_event.dart';
import 'package:learning_bloc_using_counter_app/counter_observer.dart';

// Future<void> main() async {
//   Bloc.observer = const CounterObserver();
//   final cubit = CounterCubit();
//   cubit.increment();
//   cubit.increment();

//   await cubit.close();
// }

// Future<void> main() async {
//   Bloc.observer = CounterObserver();
//   final bloc = CounterBloc();
//   final subscription = bloc.stream.listen(print);
//   bloc.add(CounterIncrementPressed());
//   bloc.add(CounterIncrementPressed());
//   await Future.delayed(Duration.zero);
//   await subscription.cancel();
//   await bloc.close();
// }

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const CounterPage(),
      ),
    );
  }
}
