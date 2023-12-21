import 'package:p_wanandroid/data/model/system_entity.dart';

import '../../../common/base/base_state.dart';

class NaviState extends BaseState<SystemEntity> {
  NaviState init() {
    return NaviState()
      ..netState = NetState.loadingState
      ..dataList = [];
  }

  NaviState clone() {
    return NaviState()
      ..netState = netState
      ..dataList = dataList;
  }
}
