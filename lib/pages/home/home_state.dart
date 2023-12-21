import 'package:p_wanandroid/common/base/base_state.dart';
import 'package:p_wanandroid/data/model/project_tab_entity.dart';

class HomeState extends BaseState<ProjectTabEntity> {
  HomeState init() {
    return HomeState()
      ..netState = NetState.loadingState
      ..dataList = [];
  }

  HomeState clone() {
    return HomeState()
      ..netState = netState
      ..dataList = dataList;
  }
}
