import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/setting/setting_event.dart';
import 'package:p_wanandroid/pages/setting/setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState().init()) {
    on<ChangeThemeEvent>(_changeThemeEvent);
  }

  void _changeThemeEvent(event, emit) {
    state.isDark = event.isDark;
    emit(state.clone());
  }
}
