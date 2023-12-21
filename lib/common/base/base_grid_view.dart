import 'package:flutter/material.dart';
import 'package:p_wanandroid/common/base/refresh_header.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'loadiing_footer.dart';

class BaseGridView<T> extends StatefulWidget {
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
  final EdgeInsets? padding;

  /// 宽高比
  final double childAspectRatio;

  /// 水平间距
  final double crossAxisSpacing;

  /// 垂直间距
  final double mainAxisSpacing;

  /// 一行几个
  final int crossAxisCount;
  const BaseGridView({
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
    this.padding,
    required this.childAspectRatio,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.crossAxisCount,
  }) : super(key: key);

  @override
  State<BaseGridView> createState() => _BaseGridViewState<T>();
}

class _BaseGridViewState<T> extends State<BaseGridView> {
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
    return GridView.builder(
      itemCount: widget.data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: widget.childAspectRatio, //宽高比
          crossAxisSpacing: widget.crossAxisSpacing, //水平间距
          mainAxisSpacing: widget.mainAxisSpacing, //垂直间距
          crossAxisCount: widget.crossAxisCount),
      padding: widget.padding ?? const EdgeInsets.all(0),
      itemBuilder: _itemBuilder,
    );
  }

  @override
  Widget build(BuildContext context) => _configuration(_list());
}
