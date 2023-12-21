import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/common/net/page_model.dart';
import 'package:p_wanandroid/data/model/project_list_entity.dart';

import '../../common/index.dart';
import '../../common/net/index.dart';
import '../../data/models/handle_state.dart';
import 'project_list_state.dart';

class ProjectListCubit extends Cubit<ProjectListState> {
  ProjectListCubit() : super(ProjectListState().init());

  /// 获取数据
  Future<void> getListData(int cid, int pageNum) async {
    /// 复制一个新的对象
    var nerStates = state.clone();
    // XsEasyLoading.showLoading();
    var response =
        await DioManager.getInstance().wanService.getProjectList(pageNum, cid);

    /// 根据数据更新页面状态
    nerStates.netState = HandleState.handle(response, nerStates);
    if (nerStates.netState == NetState.dataSuccessState) {
      PageModel<ProjectListEntity>? data = response.data;
      nerStates.netLoadCount += 1;
      if (pageNum == 1) {
        nerStates.dataList = data?.datas;
        if ((state.dataList ?? []).isEmpty) {
          state.netState = NetState.emptyDataState;
        }
      } else {
        // nerStates.dataList?.addAll(infoListModel?.works ?? []);
        if (data!.datas!.isEmpty) {
          nerStates.isNoMoreDataState = true;
        } else {
          nerStates.dataList = nerStates.dataList! + data.datas!;
        }
      }
    }
    emit(nerStates);
  }
}
