import 'package:flutter/material.dart';
import 'package:p_wanandroid/common/base/refresh_header.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'loadiing_footer.dart';

/// 上拉下拉 直接传入listview 即可

class CommonRefresher<T> extends StatefulWidget {
  final bool enablePullUp;
  final bool enablePullDown;
  final Function() onRefresh;
  final Function() onLoading;
  final RefreshController refreshController;
  final Color? bgColor;
  final Widget listWidget;

  const CommonRefresher({
    Key? key,
    this.enablePullUp = false,
    this.enablePullDown = false,
    required this.onRefresh,
    required this.onLoading,
    required this.refreshController,
    this.bgColor = Colors.white,
    required this.listWidget,
  }) : super(key: key);

  @override
  State<CommonRefresher> createState() => _CommonRefresherState<T>();
}

class _CommonRefresherState<T> extends State<CommonRefresher> {
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

  @override
  Widget build(BuildContext context) => _configuration(widget.listWidget);
}
