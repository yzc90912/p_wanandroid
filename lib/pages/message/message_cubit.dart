import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/message/message_state.dart';

import '../../common/base/index.dart';
import '../../common/net/index.dart';
import '../../data/model/cubit_entity.dart';
import '../../data/models/handle_state.dart';

class MessageCubit extends Cubit<MessageState> {
  MessageCubit() : super(MessageState().init());

  /// 获取数据
  Future<void> getListData(String path, int pageNum) async {
    /// 复制一个新的对象
    var nerStates = state.clone();
    // XsEasyLoading.showLoading();
    var response = await DioManager.getInstance()
        .androidService
        .getMessageList(pageNum, 20, "车讯原创", 0);
    // XsEasyLoading.dismiss();

    /// 根据数据更新页面状态
    nerStates.netState = HandleState.handle(response, nerStates);
    if (nerStates.netState == NetState.dataSuccessState) {
      CubitEntity? infoListModel = response.data;
      nerStates.netLoadCount += 1;
      if (pageNum == 1) {
        nerStates.dataList = infoListModel?.works;
        if ((state.dataList ?? []).isEmpty) {
          state.netState = NetState.emptyDataState;
        }
      } else {
        // nerStates.dataList?.addAll(infoListModel?.works ?? []);
        if (infoListModel!.works!.isEmpty) {
          nerStates.isNoMoreDataState = true;
        } else {
          nerStates.dataList = nerStates.dataList! + infoListModel.works!;
        }
      }
    }
    emit(nerStates);
  }
}
