part of 'login_bloc.dart';

class LoginState {
  String? phoneNumber;
  String? password;
  LoginState init() {
    return LoginState()
      ..phoneNumber = ''
      ..password = '';
  }

  LoginState clone() {
    return LoginState()
      ..phoneNumber = phoneNumber
      ..password = password;
  }
}
