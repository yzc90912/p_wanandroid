import 'package:mmkv/mmkv.dart';

import '../../common/constants/constants.dart';

class SettingState {
  bool? isDark;

  SettingState init() {
    return SettingState()
      ..isDark = MMKV.defaultMMKV().decodeBool(Constants.theme) ?? false;
  }

  SettingState clone() {
    return SettingState()..isDark = isDark;
  }
}
