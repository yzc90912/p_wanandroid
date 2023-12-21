class UserInfoState {
  String? avatar;

  UserInfoState init() {
    return UserInfoState()..avatar = null;
  }

  UserInfoState clone() {
    return UserInfoState()..avatar = avatar;
  }
}
