import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/common/config/global_config.dart';
import 'package:p_wanandroid/common/theme/locales.cubit.dart';
import 'package:p_wanandroid/common/theme/theme_cubit.dart';
import 'package:p_wanandroid/pages/home/home_cubit.dart';
import 'package:p_wanandroid/pages/index/index_page.dart';
import 'package:p_wanandroid/pages/login/login_bloc.dart';
import 'package:p_wanandroid/pages/message/deatil/message_detail_cubit.dart';
import 'package:p_wanandroid/pages/message/message_cubit.dart';
import 'package:p_wanandroid/pages/mine/mine_cubit.dart';
import 'package:p_wanandroid/pages/mine/user_cubit.dart';
import 'package:p_wanandroid/pages/project/project_list_cubit.dart';
import 'package:p_wanandroid/pages/setting/language_bloc.dart';
import 'package:p_wanandroid/pages/setting/setting_bloc.dart';
import 'package:p_wanandroid/pages/system/category/category_bloc.dart';
import 'package:p_wanandroid/pages/tab/tab_cubit.dart';
import 'package:p_wanandroid/pages/userinfo/userinfo_bloc.dart';
import 'package:p_wanandroid/pages/video/video_cubit.dart';

import 'common/net/index.dart';
import 'generated/l10n.dart';
import 'pages/system/navi/navi_cubit.dart';

Future<void> main() async {
  await Config.init();
  DioManager.getInstance().init();
  runApp(const Wrapper(child: MyApp()));
}

class Wrapper extends StatelessWidget {
  final Widget child;
  const Wrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
        BlocProvider<LocalesCubit>(create: (_) => LocalesCubit()),
        BlocProvider<MessageCubit>(create: (_) => MessageCubit()),
        BlocProvider<MessageDetailCubit>(create: (_) => MessageDetailCubit()),
        BlocProvider<HomeCubit>(create: (_) => HomeCubit()),
        BlocProvider<VideoCubit>(create: (_) => VideoCubit()),
        BlocProvider<ProjectListCubit>(create: (_) => ProjectListCubit()),
        BlocProvider<CategoryBloc>(create: (_) => CategoryBloc()),
        BlocProvider<NaviCubit>(create: (_) => NaviCubit()),
        BlocProvider<MineCubit>(create: (_) => MineCubit()),
        BlocProvider<LoginBloc>(create: (_) => LoginBloc()),
        BlocProvider<UserCubit>(create: (_) => UserCubit()),
        BlocProvider<SettingBloc>(create: (_) => SettingBloc()),
        BlocProvider<UserInfoBloc>(create: (_) => UserInfoBloc()),
        BlocProvider<TabCubit>(create: (_) => TabCubit()),
        BlocProvider<LanguageBloc>(create: (_) => LanguageBloc()),
      ],
      child: child,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(builder: (_, theme) {
      return BlocBuilder<LocalesCubit, Locale>(builder: (_, locale) {
        return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            builder: (BuildContext context, Widget? child) {
              return MaterialApp(
                navigatorKey: NavigatorProvider.navigatorKey,
                debugShowCheckedModeBanner: false,
                theme: theme,
                home: const IndexPage(),
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  S.delegate,
                ],
                locale: locale,
                builder: EasyLoading.init(),
                supportedLocales: S.delegate.supportedLocales,
              );
            });
      });
    });
  }
}

/// 用于提供全局的 navigatorContext
class NavigatorProvider {
  final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'wanandroid');

  static final NavigatorProvider _instance = NavigatorProvider._();

  NavigatorProvider._();

  /// 赋值给根布局的 materialApp 上
  /// navigatorKey.currentState.pushName('url') 可直接用于跳转
  static GlobalKey<NavigatorState> get navigatorKey => _instance._navigatorKey;

  /// 可用于 跳转，overlay-insert（toast，loading） 使用
  static BuildContext? get navigatorContext =>
      _instance._navigatorKey.currentState?.context;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Text(
        S.of(context).localeTitle,
        style: Theme.of(context).textTheme.displaySmall,
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              // context.read<CounterBloc>().add(CounterIncrementPressed());
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              // context.read<CounterBloc>().add(CounterDecrementPressed());
              context.read<LocalesCubit>().toggleLocale(false);
            },
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ],
      ),
    );
  }
}
