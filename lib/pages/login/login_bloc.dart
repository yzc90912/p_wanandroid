import 'package:bloc/bloc.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/data/model/user_entity.dart';

import '../../common/net/index.dart';
import '../../widget/index.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState().init()) {
    on<CommitPasswordEvent>(_commitPasswordEvent);
    on<CommitPhoneEvent>(_commitPhoneEvent);
  }

  void _commitPhoneEvent(event, emit) {
    state.phoneNumber = event.phoneNumber;
    emit(state.clone());
  }

  void _commitPasswordEvent(event, emit) {
    state.password = event.password;
    emit(state.clone());
  }

  Future<UserEntity?> login() async {
    if (state.phoneNumber == null || state.phoneNumber!.isEmpty) {
      ToastUtil.toast(content: "请输入账号");
      return null;
    }
    if (state.password == null || state.password!.isEmpty) {
      ToastUtil.toast(content: "请输入密码");
      return null;
    }
    XsEasyLoading.showLoading();
    var response = await DioManager.getInstance()
        .wanService
        .login(state.phoneNumber ?? "", state.password ?? "");
    XsEasyLoading.dismiss();
    if (response.isSuccess) {
      return response.data;
    }

    return null;
  }
}
