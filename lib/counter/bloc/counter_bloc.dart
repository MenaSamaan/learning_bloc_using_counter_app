// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc_using_counter_app/counter/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      // addError(Exception('increment error!'), StackTrace.current);
      emit(state + 1);
    });
    on<CounterDecrementPressed>((event, emit) {
      emit(state - 1);
    });
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    print(event);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}

// on<AuthEventSendEmailVerification>((event, emit) async {
//       await provider.sendEmailVerification();
//       emit(state);
//     });
//     on<AuthEventRegister>((event, emit) async {
//       final email = event.email;
//       final password = event.password;
//       try {
//         await provider.createUser(
//           email: email,
//           password: password,
//         );
//         await provider.sendEmailVerification();
//         emit(const AuthStateNeedsVerification());
//       } on Exception catch (e) {
//         emit(AuthStateRegistering(e));
//       }
//     });