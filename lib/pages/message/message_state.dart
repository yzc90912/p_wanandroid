import 'package:p_wanandroid/data/model/cubit_entity.dart';

import '../../common/index.dart';

class MessageState extends BaseState<Work> {
  MessageState init() {
    return MessageState()
      ..netState = NetState.loadingState
      ..isNoMoreDataState = false
      ..isNetWorkFinish = false
      ..dataList = []
      ..netLoadCount = 0;
  }

  MessageState clone() {
    return MessageState()
      ..netState = netState
      ..isNoMoreDataState = isNoMoreDataState
      ..isNetWorkFinish = isNetWorkFinish
      ..dataList = dataList
      ..netLoadCount = netLoadCount;
  }
}
