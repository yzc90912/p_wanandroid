import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LoadingFooter extends StatelessWidget {
  const LoadingFooter({Key? key}) : super(key: key);

  ///logo
  Widget _logo() {
    return Container();
  }

  ///提示语
  ///
  /// [showText] 提示内容
  Widget _prompt(String showText) {
    return Text(
      showText,
      style: TextStyle(
        color: const Color(0xFF979797),
        fontSize: 14.sp,
      ),
    );
  }

  ///提示语和log
  ///
  /// [showText] 提示内容
  Widget _hint(String showText) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [_prompt(showText), SizedBox(height: 4.h), _logo()],
      ),
    );
  }

  ///列表头
  CustomFooter _footer() {
    Widget body = _hint("上拉加载更多");
    return CustomFooter(
      builder: (context, mode) {
        if (mode == LoadStatus.idle) {
          body = _hint("上拉加载更多");
        } else if (mode == LoadStatus.loading) {
          body = _hint("加载中...");
        } else if (mode == LoadStatus.failed) {
          body = _hint("加载失败");
        } else if (mode == LoadStatus.canLoading) {
          body = _hint("松手加载更多");
        } else {
          body = _hint("没有更多了～");
        }
        return body;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _footer();
  }
}
