import 'package:p_wanandroid/common/net/api_response.dart';

import '../../common/index.dart';

/// 处理网络层根据 ResponseModel 给state改变状态

class HandleState {
  /// successCode 即后端返回数据成功的code,这个参数是为了后端接口返回code不一致.
  static NetState handle(ApiResponse responseModel, BaseState state,
      {int? successCode = 100200}) {
    if (responseModel.code == successCode || responseModel.errorCode == 0) {
      state.netState = NetState.dataSuccessState;
    } else if (responseModel.code == 404) {
      state.netState = NetState.error404State;
    } else if (responseModel.code == -100) {
      state.netState = NetState.timeOutState;
    } else {
      state.netState = NetState.errorShowRefresh;
    }
    return state.netState;
  }
}
