import 'package:p_wanandroid/data/model/project_list_entity.dart';

import '../../common/index.dart';

class ProjectListState extends BaseState<ProjectListEntity> {
  ProjectListState init() {
    return ProjectListState()
      ..netState = NetState.loadingState
      ..isNoMoreDataState = false
      ..isNetWorkFinish = false
      ..dataList = []
      ..netLoadCount = 0;
  }

  ProjectListState clone() {
    return ProjectListState()
      ..netState = netState
      ..isNoMoreDataState = isNoMoreDataState
      ..isNetWorkFinish = isNetWorkFinish
      ..dataList = dataList
      ..netLoadCount = netLoadCount;
  }
}
