import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


class RefreshHeader extends StatelessWidget {
  const RefreshHeader({Key? key}) : super(key: key);

  ///提示语
  ///
  /// [showText] 提示内容
  Widget _prompt(String showText) {
    return Column(
      children: [
        Text(
          showText,
          style: TextStyle(color: const Color(0xFF979797), fontSize: 14.sp),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }

  ///提示语和log
  ///
  /// [showText] 提示内容
  Widget _hint(String showText) {
    return Column(
      children: [_prompt(showText), SizedBox(height: 8.h)/*, _prompt(showText)*/],
    );
  }

  ///列表头
  CustomHeader _header() {
    Widget body = _hint("下拉刷新");
    return CustomHeader(
      builder: (context, mode) {
        if (mode == RefreshStatus.idle) {
          body = _hint("下拉刷新");
        } else if (mode == RefreshStatus.refreshing) {
          body = _hint("正在刷新");
        } else if (mode == RefreshStatus.failed) {
          body = _hint("加载失败！");
        } else if (mode == RefreshStatus.canRefresh) {
          body = _hint("松手进行刷新");
        } else if (mode == RefreshStatus.completed) {
          body = _hint("已为您更新最新数据");
        } else {
          body = _hint("加载失败！");
        }
        return body;
      },
    );
  }

  @override
  Widget build(BuildContext context) => _header();
}
