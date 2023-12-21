import 'package:flutter/material.dart';

class LanguageState {
  Locale? currentLocale;

  LanguageState init() {
    return LanguageState()..currentLocale = const Locale('zh', 'CH');
  }

  LanguageState clone() {
    return LanguageState()..currentLocale = currentLocale;
  }
}
