import 'package:p_wanandroid/data/model/user_entity.dart';

class UserState {
  UserEntity? userEntity;
  bool? isLogin;

  UserState init() {
    return UserState()
      ..userEntity = null
      ..isLogin = false;
  }

  UserState clone() {
    return UserState()
      ..userEntity = userEntity
      ..isLogin = isLogin;
  }
}
