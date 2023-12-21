import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/pages/setting/language_bloc.dart';
import 'package:p_wanandroid/pages/setting/language_event.dart';
import 'package:p_wanandroid/pages/setting/language_state.dart';

import '../../common/theme/locales.cubit.dart';
import '../../generated/l10n.dart';

class LanguagePage extends BasePage {
  const LanguagePage({super.key});

  @override
  BasePageState<LanguagePage> getState() => _LanguagePageState();
}

class _LanguagePageState extends BasePageState<LanguagePage> {
  @override
  void initState() {
    pageBgColor = const Color(0xFFF3F4F8);
    Future.delayed(Duration.zero, () {
      pageTitle = S.of(context).mineSettingLanguage;
    });

    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (bloc, state) {
        return Column(
          children: [
            RadioListTile<Locale>(
                title: Text(S.of(context).mineSettingLanguageZh),
                value: const Locale('zh', 'CH'),
                groupValue: state.currentLocale,
                onChanged: (value) {
                  BlocProvider.of<LanguageBloc>(context).add(
                    ChangeLanguageEvent(const Locale('zh', 'CH')),
                  );
                  context.read<LocalesCubit>().toggleLocale(true);
                }),
            RadioListTile<Locale>(
                title: Text(S.of(context).mineSettingLanguageEn),
                value: const Locale('en', 'US'),
                groupValue: state.currentLocale,
                onChanged: (value) {
                  BlocProvider.of<LanguageBloc>(context).add(
                    ChangeLanguageEvent(const Locale('en', 'US')),
                  );
                  context.read<LocalesCubit>().toggleLocale(false);
                }),
          ],
        );
      },
    );
  }
}
