import 'package:flutter_easyloading/flutter_easyloading.dart';

class XsEasyLoading {
  /// 显示loading
  static showLoading({String? message, EasyLoadingMaskType? maskType}) {
    if (maskType == EasyLoadingMaskType.clear) {
      EasyLoading.instance.maskType = EasyLoadingMaskType.clear;
    }
    EasyLoading.show(
        status: message ?? '加载中...',
        maskType: maskType ?? EasyLoadingMaskType.none);
  }

  /// 移除loading
  static dismiss() {
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
  }

  /// 显示toast
  /// fontSize 字体大小
  /// textColor 文字颜色
  /// gravity toast 显示位置
  /// backgroundColor 背景色
  /// toast 显示时间 Toast.LENGTH_LONG 5秒，Toast.LENGTH_SHORT 1秒
  // static showToast(
  //   String msg, {
  //   double fontSize = 16,
  //   Toast toast = Toast.LENGTH_SHORT,
  //   Color bgColor = Colors.black,
  //   Color textColor = Colors.white,
  //   ToastGravity gravity = ToastGravity.CENTER,
  //   Function()? dismiss,
  // }) {
  //   XsEasyLoading.dismiss();
  //   Fluttertoast.showToast(
  //     msg: msg,
  //     gravity: gravity,
  //     toastLength: toast,
  //     fontSize: fontSize,
  //     textColor: textColor,
  //     backgroundColor: bgColor,
  //   ).then((value) {
  //     if (dismiss != null) {
  //       dismiss();
  //     }
  //   });
  // }
}
