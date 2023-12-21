import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/common/net/dio_manager.dart';
import 'package:p_wanandroid/pages/tab/tab_state.dart';

import '../../common/index.dart';
import '../../common/net/page_model.dart';
import '../../data/model/project_list_entity.dart';
import '../../data/models/handle_state.dart';

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(TabState().init());

  Future<void> getTabList(cid, int pageNum) async {
    var nerStates = state.clone();
    var response =
        await DioManager.getInstance().wanService.getArticleList(pageNum, cid);

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
