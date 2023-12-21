import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalesCubit extends Cubit<Locale> {
  /// {@macro brightness_cubit}
  LocalesCubit() : super(const Locale('zh', 'CH'));

  /// Toggles the current locale between English and French.
  void toggleLocale(isChinese) {
    emit(isChinese ? const Locale('zh', 'CH') : const Locale('en', 'US'));
  }
}
