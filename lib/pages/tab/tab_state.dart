import 'package:p_wanandroid/common/base/base_state.dart';

import '../../data/model/project_list_entity.dart';

class TabState extends BaseState<ProjectListEntity> {
  TabState init() {
    return TabState()
      ..netState = NetState.loadingState
      ..dataList = [];
  }

  TabState clone() {
    return TabState()
      ..netState = netState
      ..dataList = dataList;
  }
}
