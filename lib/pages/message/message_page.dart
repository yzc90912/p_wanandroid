import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/data/model/cubit_entity.dart';
import 'package:p_wanandroid/pages/message/deatil/message_detail_page.dart';
import 'package:p_wanandroid/pages/message/message_cubit.dart';
import 'package:p_wanandroid/pages/message/message_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../common/index.dart';
import 'message_item.dart';

class MessagePage extends BasePage {
  const MessagePage({super.key});

  @override
  BasePageState<BasePage> getState() {
    return _MessagePageState();
  }
}

class _MessagePageState extends BasePageState<MessagePage> {
  /// 请求分页
  int _pageNum = 1;

  /// 列表控制器
  final ScrollController scrollController = ScrollController();

  /// 刷新组建控制器
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  /// 隐藏返回按钮
  @override
  Widget left() {
    return const SizedBox();
  }

  @override
  void initState() {
    super.initState();
    pageTitle = 'cubit-list';
    pageBgColor = const Color(0xFFF3F4F8);
    isBack = false;
    _getData();
  }

  /// 请求数据
  _getData() {
    MessageCubit cubit = context.read<MessageCubit>();
    cubit.getListData('searchV5', _pageNum);
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

  void _listener(BuildContext context, MessageState state) {
    refreshController.refreshCompleted();
    refreshController.loadComplete();
    if (state.isNoMoreDataState == true) {
      refreshController.loadNoData();
    }
  }

  Widget mainWidget(MessageState state) {
    return BaseListView(
      refreshController: refreshController,
      scrollController: scrollController,
      bgColor: const Color(0xFFF3F4F8),
      enablePullDown: true,
      enablePullUp: true,
      data: state.dataList ?? [],
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      itemBuilder: (Work model, int index) => MessageItem(
        model: model,
        onTap: () {
          navigateTo(context, MessageDetailPage(entityId: model.id ?? 0));
        },
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<MessageCubit, MessageState>(
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
