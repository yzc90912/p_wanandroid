import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/common/net/dio_manager.dart';
import 'package:p_wanandroid/pages/home/home_state.dart';

import '../../common/index.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState().init());

  Future<void> getTabData() async {
    var nerStates = state.clone();
    var response = await DioManager.getInstance().wanService.getProjectTab();

    /// 根据数据更新页面状态
    // nerStates.netState = HandleState.handle(response, nerStates);

    nerStates.netLoadCount += 1;

    nerStates.dataList = response.data;
    nerStates.netState = NetState.dataSuccessState;
    emit(nerStates);
  }
}
