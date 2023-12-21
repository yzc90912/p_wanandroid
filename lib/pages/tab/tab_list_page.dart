import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/pages/tab/tab_cubit.dart';
import 'package:p_wanandroid/pages/tab/tab_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../data/model/project_list_entity.dart';
import '../mine/project_item.dart';

class TabListPage extends BasePage {
  const TabListPage({super.key, required this.cid});
  final int cid;

  @override
  BasePageState<TabListPage> getState() => _TabListPageState();
}

class _TabListPageState extends BasePageState<TabListPage> {
  /// 请求分页
  int _pageNum = 1;

  /// 列表控制器
  final ScrollController scrollController = ScrollController();

  /// 刷新组建控制器
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    pageBgColor = Colors.grey;
    isRenderHeader = false;
    _getData();
  }

  /// 请求数据
  _getData() {
    TabCubit cubit = context.read<TabCubit>();
    cubit.getTabList(widget.cid, _pageNum);
  }

  /// 上拉加载
  void _onLoading() {
    _pageNum++;
    _getData();
  }

  /// 下拉刷新
  void _onRefresh() {
    _pageNum = 1;
    _getData();
  }

  void _listener(BuildContext context, state) {
    refreshController.refreshCompleted();
    refreshController.loadComplete();
    if (state.isNoMoreDataState == true) {
      refreshController.loadNoData();
    }
  }

  Widget mainWidget(state) {
    return BaseListView(
      refreshController: refreshController,
      scrollController: scrollController,
      bgColor: const Color(0xFFF3F4F8),
      enablePullDown: true,
      enablePullUp: true,
      data: state.dataList ?? [],
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      itemBuilder: (ProjectListEntity model, int index) =>
          ProjectItem(model: model),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<TabCubit, TabState>(
      listener: _listener,
      listenWhen: (state1, state2) {
        if (state1.netLoadCount != state2.netLoadCount) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return resultWidget(state, (baseState, context) => mainWidget(state),
            refreshMethod: () {
          _pageNum = 1;
          _getData();
        });
      },
    );
  }
}
