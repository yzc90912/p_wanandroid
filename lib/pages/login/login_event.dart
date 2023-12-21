part of 'login_bloc.dart';

abstract class LoginEvent {}

class CommitPhoneEvent extends LoginEvent {
  CommitPhoneEvent(this.phoneNumber);

  final String phoneNumber;
}

class CommitPasswordEvent extends LoginEvent {
  CommitPasswordEvent(this.password);
  final String password;
}
