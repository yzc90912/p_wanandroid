import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mmkv/mmkv.dart';
import 'package:p_wanandroid/common/constants/constants.dart';
import 'package:p_wanandroid/pages/mine/user_state.dart';

import '../../data/model/user_entity.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState().init());

  void getUserInfo() {
    if (MMKV.defaultMMKV().decodeString(Constants.user) != null) {
      emit(UserState()
        ..isLogin = true
        ..userEntity = userEntityFromJson(
            MMKV.defaultMMKV().decodeString(Constants.user)!));
    } else {
      emit(UserState()
        ..userEntity = null
        ..isLogin = false);
    }
  }

  UserEntity? getUser() {
    return state.userEntity;
  }

  void updateUserInfo(UserEntity? userEntity) {
    MMKV.defaultMMKV().encodeString(
        Constants.user, userEntityToJson(userEntity ?? const UserEntity()));
    emit(UserState()..userEntity = userEntity);
  }
}
