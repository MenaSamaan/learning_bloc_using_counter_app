sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

final class CounterDecrementPressed extends CounterEvent {}


// abstract class AuthEvent {
//   const AuthEvent();
// }

// class AuthEventInitialize extends AuthEvent {
//   const AuthEventInitialize();
// }

// class AuthEventSendEmailVerification extends AuthEvent {
//   const AuthEventSendEmailVerification();
// }

// class AuthEventLogIn extends AuthEvent {
//   final String email;
//   final String password;
//   AuthEventLogIn(this.email, this.password);
// }
