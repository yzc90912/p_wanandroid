import 'package:flutter/material.dart';

abstract class LanguageEvent {}

class ChangeLanguageEvent extends LanguageEvent {
  ChangeLanguageEvent(this.currentLocale);

  final Locale currentLocale;
}
