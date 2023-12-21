import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/setting/language_event.dart';
import 'package:p_wanandroid/pages/setting/language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState().init()) {
    on<ChangeLanguageEvent>(_changeThemeEvent);
  }
  void _changeThemeEvent(event, emit) {
    state.currentLocale = event.currentLocale;
    emit(state.clone());
  }
}
