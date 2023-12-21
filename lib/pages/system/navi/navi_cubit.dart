import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/system/navi/navi_state.dart';

import '../../../common/index.dart';
import '../../../common/net/index.dart';

class NaviCubit extends Cubit<NaviState> {
  NaviCubit() : super(NaviState().init());

  /// 获取数据
  Future<void> getListData() async {
    /// 复制一个新的对象
    var nerStates = state.clone();
    // XsEasyLoading.showLoading();
    var response = await DioManager.getInstance().wanService.getSystem();

    /// 根据数据更新页面状态
    nerStates.netLoadCount += 1;

    nerStates.dataList = response.data!;
    nerStates.netState = NetState.dataSuccessState;
    emit(nerStates);
  }
}
