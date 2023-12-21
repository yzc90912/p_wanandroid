import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/message/deatil/message_detail_state.dart';

import '../../../common/index.dart';
import '../../../common/net/index.dart';

class MessageDetailCubit extends Cubit<MessageDetailState> {
  MessageDetailCubit() : super(MessageDetailState().init());

  /// 获取详情数据
  Future<void> getDetailData(int id) async {
    var response =
        await DioManager.getInstance().androidService.getMessageDetail(id);
    state.data = response.data;
    if (response.code == 100200) {
      state.netState = NetState.dataSuccessState;
    } else if (response.code == 404) {
      state.netState = NetState.error404State;
    } else if (response.code == -100) {
      state.netState = NetState.timeOutState;
    } else {
      state.netState = NetState.errorShowRefresh;
    }
    emit(state.clone());
  }
}
