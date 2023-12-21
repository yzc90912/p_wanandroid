import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:p_wanandroid/common/utils/toast_util.dart';

import '../../generated/l10n.dart';
import '../index.dart';

class BaseWillPopPage extends StatefulWidget {
  final Widget child;
  final bool isAllowBack;
  const BaseWillPopPage({
    Key? key,
    required this.child,
    required this.isAllowBack,
  }) : super(key: key);

  @override
  State<BaseWillPopPage> createState() => _BaseWillPopPageState();
}

class _BaseWillPopPageState extends State<BaseWillPopPage> {
  /// 上次返回时间
  int _lastExitTime = 0;

  /// 内容

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: SystemUtil.isIOS() && widget.isAllowBack
          ? null
          : () async {
              if (!widget.isAllowBack) {
                return await Future.value(false);
              }
              int nowExitTime = DateTime.now().millisecondsSinceEpoch;
              bool canPop = Navigator.canPop(context);
              if (canPop) {
                return await Future.value(true);
              } else if (nowExitTime - _lastExitTime > 2000 && !canPop) {
                _lastExitTime = nowExitTime;
                ToastUtil.toast(content: S.of(context).exitApp);
                return await Future.value(false);
              } else {
                exit(0);
              }
            },
      child: widget.child,
    );
  }
}
