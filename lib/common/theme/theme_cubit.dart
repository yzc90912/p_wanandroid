import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mmkv/mmkv.dart';

import '../constants/constants.dart';

class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit()
      : super(MMKV.defaultMMKV().decodeBool(Constants.theme) ?? false
            ? _darkTheme
            : _lightTheme);

  static final _lightTheme = ThemeData(
    useMaterial3: true,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    brightness: Brightness.light,
    // primaryColor: const Color(0xffFFD524),
    // primaryColorLight: const Color(0xffFFD524),
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: const Color(0xffFFD524),
        primary: const Color(0xffFFD524)
        // ···
        ),
    tabBarTheme: const TabBarTheme(
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab),
  );

  static final _darkTheme = ThemeData(
    useMaterial3: true,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark,
    tabBarTheme: const TabBarTheme(
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab),
  );

  /// Toggles the current brightness between light and dark.
  ///
  static bool isDark() {
    return MMKV.defaultMMKV().decodeBool(Constants.theme) ?? false;
  }

  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
