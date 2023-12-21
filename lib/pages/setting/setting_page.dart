import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mmkv/mmkv.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/common/theme/theme_cubit.dart';
import 'package:p_wanandroid/pages/setting/language_page.dart';
import 'package:p_wanandroid/pages/setting/setting_bloc.dart';
import 'package:p_wanandroid/pages/setting/setting_event.dart';
import 'package:p_wanandroid/pages/setting/setting_state.dart';
import 'package:p_wanandroid/pages/userinfo/userinfo_page.dart';
import 'package:p_wanandroid/widget/index.dart';

import '../../common/constants/constants.dart';
import '../../generated/l10n.dart';

class SettingPage extends BasePage {
  const SettingPage({super.key});

  @override
  BasePageState<SettingPage> getState() => _SettingPageState();
}

class _SettingPageState extends BasePageState<SettingPage> {
  @override
  void initState() {
    pageBgColor = const Color(0xFFF3F4F8);
    Future.delayed(Duration.zero, () {
      pageTitle = S.of(context).setting;
    });

    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (bloc, state) {
        return Column(
          children: [
            SettingBar(
              leftTitle: S.of(context).userInfo,
              isDarkMode: state.isDark ?? false,
              onClick: () {
                navigateTo(context, const UserInfoPage());
              },
            ),
            SettingBar(
              leftTitle: S.of(context).mineSettingLanguage,
              isDarkMode: state.isDark ?? false,
              onClick: () {
                navigateTo(context, const LanguagePage());
              },
            ),
            SettingBar(
              leftTitle: S.of(context).darkMode,
              rightIcon: BrnSwitchButton(
                size: Size(50.w, 25.h),
                value: state.isDark ?? false,
                onChanged: (value) async {
                  BlocProvider.of<SettingBloc>(context).add(
                    ChangeThemeEvent(value),
                  );
                  MMKV.defaultMMKV().encodeBool(Constants.theme, value);
                  context.read<ThemeCubit>().toggleTheme();
                },
              ),
              isDarkMode: state.isDark ?? false,
            ),
          ],
        );
      },
    );
  }
}
