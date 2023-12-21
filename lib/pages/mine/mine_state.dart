import 'package:p_wanandroid/data/model/project_list_entity.dart';

import '../../common/index.dart';

class MineState extends BaseState<ProjectListEntity> {
  MineState init() {
    return MineState()
      ..netState = NetState.loadingState
      ..isNoMoreDataState = false
      ..isNetWorkFinish = false
      ..dataList = []
      ..netLoadCount = 0;
  }

  MineState clone() {
    return MineState()
      ..netState = netState
      ..isNoMoreDataState = isNoMoreDataState
      ..isNetWorkFinish = isNetWorkFinish
      ..dataList = dataList
      ..netLoadCount = netLoadCount;
  }
}
