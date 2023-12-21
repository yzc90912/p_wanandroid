import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:p_wanandroid/main.dart';

class ToastUtil {
  static void toast({String? content}) {
    BuildContext context = NavigatorProvider.navigatorContext!;
    // Fluttertoast.showToast(msg: content, gravity: ToastGravity.BOTTOM);

    BrnToast.show(
      content ?? "", context,
      gravity: BrnToastGravity.center, // 位置
    );
  }

  static void toastContext(BuildContext context, {String? content}) {
    BrnToast.show(
      content ?? "", context,
      gravity: BrnToastGravity.center, // 位置
    );
  }
}
