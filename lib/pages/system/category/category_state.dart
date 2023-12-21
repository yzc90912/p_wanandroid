import 'package:p_wanandroid/data/model/category_entity.dart';

import '../../../common/index.dart';

class CategoryState extends BaseState<CategoryEntity> {
  int currentIndex = 0;
  List<Article> articles = [];
  CategoryState init() {
    return CategoryState()
      ..netState = NetState.loadingState
      ..dataList = []
      ..currentIndex = 0
      ..articles = [];
  }

  CategoryState clone() {
    return CategoryState()
      ..netState = netState
      ..dataList = dataList
      ..currentIndex = currentIndex
      ..articles = articles;
  }
}
