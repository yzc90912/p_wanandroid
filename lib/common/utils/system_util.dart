import 'dart:io';

///获取系统信息
///@author:zhangteng
///@date:2023/4/15
class SystemUtil {
  static String getSystemName() {
    return Platform.operatingSystem;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

}
