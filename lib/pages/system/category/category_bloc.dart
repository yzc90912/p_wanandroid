import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/system/category/category_event.dart';
import 'package:p_wanandroid/pages/system/category/category_state.dart';

import '../../../common/base/index.dart';
import '../../../common/net/index.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState().init()) {
    on<CategoryEvent>(_changeCagegoryEvent);
  }

  void _changeCagegoryEvent(event, emit) {
    var newStates = state.clone();
    newStates.currentIndex = event.currentIndex;
    newStates.articles = event.articles;
    emit(newStates);
  }

  Future<void> getCategoryData() async {
    var nerStates = state.clone();
    var response = await DioManager.getInstance().wanService.getCategory();

    /// 根据数据更新页面状态
    // nerStates.netState = HandleState.handle(response, nerStates);

    nerStates.netLoadCount += 1;

    nerStates.dataList = response.data!;
    nerStates.articles = response.data![0].articles!;
    nerStates.netState = NetState.dataSuccessState;
    emit(nerStates);
  }
}
