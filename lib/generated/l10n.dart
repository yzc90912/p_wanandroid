// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get localeTitle {
    return Intl.message(
      'English',
      name: 'localeTitle',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get localeSubtitle {
    return Intl.message(
      'English',
      name: 'localeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get localeDescription {
    return Intl.message(
      'English',
      name: 'localeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get localeSearch {
    return Intl.message(
      'Search',
      name: 'localeSearch',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get localeCancel {
    return Intl.message(
      'Cancel',
      name: 'localeCancel',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get localeBack {
    return Intl.message(
      'Back',
      name: 'localeBack',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get localeShare {
    return Intl.message(
      'Share',
      name: 'localeShare',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get localeCopy {
    return Intl.message(
      'Copy',
      name: 'localeCopy',
      desc: '',
      args: [],
    );
  }

  /// `Copied`
  String get localeCopied {
    return Intl.message(
      'Copied',
      name: 'localeCopied',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get localeCopiedToClipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'localeCopiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Articles`
  String get homeArticles {
    return Intl.message(
      'Articles',
      name: 'homeArticles',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get homeProjects {
    return Intl.message(
      'Projects',
      name: 'homeProjects',
      desc: '',
      args: [],
    );
  }

  /// `Knowledge`
  String get homeKnowledge {
    return Intl.message(
      'Knowledge',
      name: 'homeKnowledge',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get homeMore {
    return Intl.message(
      'More',
      name: 'homeMore',
      desc: '',
      args: [],
    );
  }

  /// `More Articles`
  String get homeMoreArticles {
    return Intl.message(
      'More Articles',
      name: 'homeMoreArticles',
      desc: '',
      args: [],
    );
  }

  /// `More Projects`
  String get homeMoreProjects {
    return Intl.message(
      'More Projects',
      name: 'homeMoreProjects',
      desc: '',
      args: [],
    );
  }

  /// `More Knowledge`
  String get homeMoreKnowledge {
    return Intl.message(
      'More Knowledge',
      name: 'homeMoreKnowledge',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get homeMoreMore {
    return Intl.message(
      'More',
      name: 'homeMoreMore',
      desc: '',
      args: [],
    );
  }

  /// `More Articles`
  String get homeMoreMoreArticles {
    return Intl.message(
      'More Articles',
      name: 'homeMoreMoreArticles',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get cubit {
    return Intl.message(
      'News',
      name: 'cubit',
      desc: '',
      args: [],
    );
  }

  /// `再次返回退出APP`
  String get exitApp {
    return Intl.message(
      '再次返回退出APP',
      name: 'exitApp',
      desc: '',
      args: [],
    );
  }

  /// `system`
  String get system {
    return Intl.message(
      'system',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `mine`
  String get mine {
    return Intl.message(
      'mine',
      name: 'mine',
      desc: '',
      args: [],
    );
  }

  /// `setting`
  String get mineSetting {
    return Intl.message(
      'setting',
      name: 'mineSetting',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get mineSettingLanguage {
    return Intl.message(
      'language',
      name: 'mineSettingLanguage',
      desc: '',
      args: [],
    );
  }

  /// `EN`
  String get mineSettingLanguageEn {
    return Intl.message(
      'EN',
      name: 'mineSettingLanguageEn',
      desc: '',
      args: [],
    );
  }

  /// `CH`
  String get mineSettingLanguageZh {
    return Intl.message(
      'CH',
      name: 'mineSettingLanguageZh',
      desc: '',
      args: [],
    );
  }

  /// `货币`
  String get mineSettingCurrency {
    return Intl.message(
      '货币',
      name: 'mineSettingCurrency',
      desc: '',
      args: [],
    );
  }

  /// `英镑`
  String get mineSettingCurrencyEn {
    return Intl.message(
      '英镑',
      name: 'mineSettingCurrencyEn',
      desc: '',
      args: [],
    );
  }

  /// `人民币`
  String get mineSettingCurrencyZh {
    return Intl.message(
      '人民币',
      name: 'mineSettingCurrencyZh',
      desc: '',
      args: [],
    );
  }

  /// `¥`
  String get mineSettingCurrencySymbol {
    return Intl.message(
      '¥',
      name: 'mineSettingCurrencySymbol',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `DarkMode`
  String get darkMode {
    return Intl.message(
      'DarkMode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `My Service`
  String get myService {
    return Intl.message(
      'My Service',
      name: 'myService',
      desc: '',
      args: [],
    );
  }

  /// `User Info`
  String get userInfo {
    return Intl.message(
      'User Info',
      name: 'userInfo',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get userInfoName {
    return Intl.message(
      'Name',
      name: 'userInfoName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get userInfoEmail {
    return Intl.message(
      'Email',
      name: 'userInfoEmail',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get userInfoPhone {
    return Intl.message(
      'Phone',
      name: 'userInfoPhone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get userInfoAddress {
    return Intl.message(
      'Address',
      name: 'userInfoAddress',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get userInfoGender {
    return Intl.message(
      'Gender',
      name: 'userInfoGender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get userInfoGenderMale {
    return Intl.message(
      'Male',
      name: 'userInfoGenderMale',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get userInfoGenderFemale {
    return Intl.message(
      'Female',
      name: 'userInfoGenderFemale',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get userInfoBirthday {
    return Intl.message(
      'Birthday',
      name: 'userInfoBirthday',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get userInfoBirthdayYear {
    return Intl.message(
      'Year',
      name: 'userInfoBirthdayYear',
      desc: '',
      args: [],
    );
  }

  /// `Avatar`
  String get avatar {
    return Intl.message(
      'Avatar',
      name: 'avatar',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get avatarChoose {
    return Intl.message(
      'Choose',
      name: 'avatarChoose',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get avatarRemove {
    return Intl.message(
      'Remove',
      name: 'avatarRemove',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get avatarRemoveConfirm {
    return Intl.message(
      'Remove',
      name: 'avatarRemoveConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get avatarRemoveCancel {
    return Intl.message(
      'Cancel',
      name: 'avatarRemoveCancel',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get avatarRemoveSuccess {
    return Intl.message(
      'Success',
      name: 'avatarRemoveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Fail`
  String get avatarRemoveFail {
    return Intl.message(
      'Fail',
      name: 'avatarRemoveFail',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get avatarRemoveError {
    return Intl.message(
      'Error',
      name: 'avatarRemoveError',
      desc: '',
      args: [],
    );
  }

  /// `Network Error`
  String get avatarRemoveErrorNetwork {
    return Intl.message(
      'Network Error',
      name: 'avatarRemoveErrorNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get avatarRemoveErrorCancel {
    return Intl.message(
      'Cancel',
      name: 'avatarRemoveErrorCancel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
