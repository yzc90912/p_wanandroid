import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mmkv/mmkv.dart';

import '../../common/constants/constants.dart';

typedef SettingBarFunc = void Function();

class SettingBar extends StatelessWidget {
  const SettingBar(
      {super.key,
      this.margin,
      this.padding,
      this.leftTitle,
      this.rightIcon,
      this.onClick,
      this.isDarkMode});
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final String? leftTitle;
  final Widget? rightIcon;
  final SettingBarFunc? onClick;
  final bool? isDarkMode;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onClick != null) {
          onClick!();
        }
      },
      child: Container(
        margin: margin ??
            EdgeInsets.only(left: 15.w, right: 15.w, top: 5.h, bottom: 5.h),
        padding: padding ??
            EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
        decoration: BoxDecoration(
          color: isDarkMode ??
                  MMKV.defaultMMKV().decodeBool(Constants.theme) ??
                  false
              ? Colors.black
              : Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(leftTitle ?? ""),
            rightIcon ?? const Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
