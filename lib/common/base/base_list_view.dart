import 'package:flutter/material.dart';
import 'package:p_wanandroid/common/base/refresh_header.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'loadiing_footer.dart';

class BaseListView<T> extends StatefulWidget {
  final bool enablePullUp;
  final bool enablePullDown;
  final Function()? onRefresh;
  final Function()? onLoading;
  final RefreshController refreshController;
  final ScrollController scrollController;
  final List<T> data;
  final Color? bgColor;
  final Function? itemBuilder;
  final Function? item;
  final Widget? emptyWidget;

  const BaseListView({
    Key? key,
    this.enablePullUp = false,
    this.enablePullDown = false,
    required this.onRefresh,
    required this.onLoading,
    required this.refreshController,
    required this.scrollController,
    required this.data,
    this.itemBuilder,
    this.bgColor = Colors.white,
    this.item,
    this.emptyWidget,
  }) : super(key: key);

  @override
  State<BaseListView> createState() => _BaseListViewState<T>();
}

class _BaseListViewState<T> extends State<BaseListView> {
  @override
  void initState() {
    super.initState();
  }

  /// 刷新组件初始化配置
  ///
  /// [list] 列表组件
  Widget _configuration(Widget list) {
    return RefreshConfiguration(
      headerTriggerDistance: 10,
      footerTriggerDistance: 0,
      enableBallisticLoad: false,
      headerBuilder: () => const RefreshHeader(),
      footerBuilder: () => const LoadingFooter(),
      child: Container(
        color: widget.bgColor,
        child: SmartRefresher(
          physics: const BouncingScrollPhysics(),
          enablePullUp: widget.enablePullUp,
          enablePullDown: widget.enablePullDown,
          controller: widget.refreshController,
          onRefresh: widget.onRefresh ?? () {},
          onLoading: widget.onLoading ?? () {},
          child: list,
        ),
      ),
    );
  }

  Widget _itemBuilder(context, index) {
    if (widget.item != null) {
      return widget.item!((widget.data[index]) as T, index: index);
    }
    if (widget.itemBuilder != null) {
      return widget.itemBuilder!((widget.data[index]) as T, index);
    }
    return const SizedBox();
  }

  /// 列表组件
  Widget _list() {
    if (widget.emptyWidget != null && widget.data.isEmpty) {
      return widget.emptyWidget!;
    } else {
      return ListView.builder(
        cacheExtent: 20,
        physics: const BouncingScrollPhysics(),
        controller: widget.scrollController,
        reverse: false,
        itemCount: widget.data.length,
        itemBuilder: _itemBuilder,
      );
    }
  }

  @override
  Widget build(BuildContext context) => _configuration(_list());
}
